#!/bin/bash
# script to be run with sudo
# tested with rockylinux9

vmuser="rocky"

cd $HOME

# Install pre-requisites
sudo dnf install -y container-selinux policycoreutils-python-utils libselinux-utils

# to download the stratum binary inside the VM
#curl -fsSLO https://github.com/ctrliq/stratum/releases/download/v1.37.1-stratum.0/stratum-linux-amd64

chmod +x /root/stratum-linux-amd64
mv /root/stratum-linux-amd64 /usr/local/bin/stratum

# Extract the embedded payload (binaries + images)
/usr/local/bin/stratum stage

# Install kubectl
#alias kubectl='k8s kubectl'
#kubectl_ver="$(curl -L -s https://dl.k8s.io/release/stable.txt)"
kubectl_ver="v1.37.1"
curl -L "https://dl.k8s.io/release/${kubectl_ver}/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl
chmod +x /usr/local/bin/kubectl

# Configure $vmuser access to stratum
# Note: there is no dedicated user group for stratum
# Running admin stratum commands requires sudo and full path: `sudo $(which stratum)`

mkdir -p /home/$vmuser/.kube
chown -R $vmuser:$vmuser /home/$vmuser/.kube
chmod 700 /home/$vmuser/.kube

mkdir -p /root/.kube
chmod 700 /root/.kube

# Run inside Vagrant VM on 1st login as root
#stratum up
#cp /var/lib/stratum/kubeconfig/admin.conf /root/.kube/config
#cp /var/lib/stratum/kubeconfig/admin.conf /home/$vmuser/.kube/config
#chown $vmuser:$vmuser /home/$vmuser/.kube/config
