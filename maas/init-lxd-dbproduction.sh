#!/bin/bash
# script to be run with sudo
# tested with ubuntu24.04

vmuser="ubuntu"

apt update
apt install -y jq

snap install --channel=3.5/stable maas
snap install --channel=5.21/stable lxd

# Fetch IPv4 address from the device, setup forwarding and NAT
export IP_ADDRESS=$(ip -j route show default | jq -r '.[].prefsrc')
export INTERFACE=$(ip -j route show default | jq -r '.[].dev')
sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/' /etc/sysctl.conf
sysctl -p
iptables -t nat -A POSTROUTING -o $INTERFACE -j SNAT --to $IP_ADDRESS
# Persist NAT configuration
echo iptables-persistent iptables-persistent/autosave_v4 boolean true | sudo debconf-set-selections
echo iptables-persistent iptables-persistent/autosave_v6 boolean true | sudo debconf-set-selections
apt install -y iptables-persistent

# LXD init
cat /tmp/lxd.cfg | lxd init --preseed
# Wait for LXD to be ready
lxd waitready
# Add vmuser to LXD group
adduser $vmuser lxd

# Setup Postgres database
systemctl disable --now systemd-timesyncd
apt install -y postgresql
sudo -i -u postgres psql -c "CREATE USER \"dbadmin\" WITH ENCRYPTED PASSWORD 'dbadmin'"
sudo -i -u postgres createdb -O "dbadmin" "dbmaas"
psqlver=$(psql --version | awk '{print $3}' | cut -c 1-2)
echo 'host    dbmaas          dbadmin         0/0                     md5' >>/etc/postgresql/$psqlver/main/pg_hba.conf

# Initialise MAAS (postgres case)
#maas init region+rack --database-uri "postgres://dbadmin:dbadmin@localhost/dbmaas" --maas-url http://${IP_ADDRESS}:5240/MAAS
maas init region+rack --database-uri "postgres://dbadmin:dbadmin@localhost/dbmaas" --maas-url http://localhost:5240/MAAS
sleep 15
# Create MAAS admin and grab API key
maas createadmin --username admin --password admin --email admin
export APIKEY=$(maas apikey --username admin)
# MAAS admin login
maas login admin 'http://localhost:5240/MAAS/' $APIKEY

# Configure MAAS networking (set gateways, vlans, DHCP on etc)
export SUBNET="10.10.10.0/24"
export FABRIC_ID=$(maas admin subnet read "$SUBNET" | jq -r ".vlan.fabric_id")
export VLAN_TAG=$(maas admin subnet read "$SUBNET" | jq -r ".vlan.vid")
export PRIMARY_RACK=$(maas admin rack-controllers read | jq -r ".[] | .system_id")
maas admin subnet update $SUBNET gateway_ip=10.10.10.1
maas admin ipranges create type=dynamic start_ip=10.10.10.200 end_ip=10.10.10.254
maas admin vlan update $FABRIC_ID $VLAN_TAG dhcp_on=True primary_rack=$PRIMARY_RACK
maas admin maas set-config name=upstream_dns value=8.8.8.8
# Add LXD as a VM host for MAAS
#maas admin vm-hosts create  password=password  type=lxd power_address=https://${IP_ADDRESS}:8443 project=maas
maas admin vm-hosts create  password=password  type=lxd power_address=https://localhost:8443 project=maas

# Automatically create and add ssh keys to MAAS
ssh-keygen -q -t rsa -N "" -f "/home/$vmuser/.ssh/id_rsa"
chown $vmuser:$vmuser /home/$vmuser/.ssh/id_rsa /home/$vmuser/.ssh/id_rsa.pub
chmod 600 /home/$vmuser/.ssh/id_rsa
chmod 644 /home/$vmuser/.ssh/id_rsa.pub
maas admin sshkeys create key="$(cat /home/$vmuser/.ssh/id_rsa.pub)"

# Enable vmuser to admin maas
sudo -u $vmuser maas login admin 'http://localhost:5240/MAAS/' $APIKEY

# Configurations
# Longer deploy timeout
maas admin maas set-config name=node_timeout value=120
