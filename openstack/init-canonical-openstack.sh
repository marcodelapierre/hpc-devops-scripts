#!/bin/bash
# script to be run with sudo
# tested with ubuntu24.04

vmuser="ubuntu"

# Install Canonical OpenStack
snap install openstack --channel=2024.1/stable

# Prepare the machine
sudo -u $vmuser sunbeam prepare-node-script --bootstrap | sudo -u $vmuser bash -x

# Bootstrap the cloud
sudo -u $vmuser sunbeam cluster bootstrap --accept-defaults --role control,compute,storage

# Configure the cloud
# NOTE: this part will fail with not enough RAM
sudo -u $vmuser sunbeam configure --accept-defaults --openrc /home/$vmuser/demo-openrc


# Reauthenticate Sunbeam into Juju after 24 hours
#sudo -u $vmuser sunbeam utils juju-login


# DEMO: Launch a VM
#sudo -u $vmuser sunbeam launch ubuntu --name test
# Enter the VM
#ssh -i /home/ubuntu/.config/openstack/sunbeam ubuntu@10.20.20.200
