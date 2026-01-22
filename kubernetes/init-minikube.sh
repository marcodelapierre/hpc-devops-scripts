#!/bin/bash
# script to be run with sudo
# tested with ubuntu24.04

vmuser="ubuntu"

# Install KVM
apt update
apt install -y qemu-system libvirt-clients libvirt-daemon-system bridge-utils

# Add $vmuser to the libvirt group
adduser $vmuser libvirt
#newgrp libvirt

# Install minikube
curl -Lo /usr/local/bin/minikube https://github.com/kubernetes/minikube/releases/download/v1.37.0/minikube-linux-amd64
chmod +x /usr/local/bin/minikube

if [ -f /root/.kube/config ] ; then 
  mv /root/.kube/config /root/.kube/config.bak
fi

sudo -u $vmuser minikube config set driver kvm2
sudo -u $vmuser minikube start
#sudo -u $vmuser minikube pause
#sudo -u $vmuser minikube unpause
#
#sudo -u $vmuser minikube stop
#sudo -u $vmuser minikube delete

for addon in dashboard default-storageclass ingress ingress-dns metrics-server storage-provisioner ; do
    sudo -u $vmuser minikube addons enable $addon
done

# Install kubectl
#alias kubectl='minikube kubectl'
#kubectl_ver="$(curl -L -s https://dl.k8s.io/release/stable.txt)"
kubectl_ver="v1.35.0"
curl -L "https://dl.k8s.io/release/${kubectl_ver}/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl
chmod +x /usr/local/bin/kubectl

# Configure root access to k8s
mkdir -p /home/$vmuser/.kube
chown -R $vmuser:$vmuser /home/$vmuser/.kube
chmod 700 /home/$vmuser/.kube

mkdir -p /root/.kube
cp /home/$vmuser/.kube/config /root/.kube/config
chown -R root:root /root/.kube
chmod 700 /root/.kube
chmod 600 /root/.kube/config
