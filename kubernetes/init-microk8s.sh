#!/bin/bash
# script to be run with sudo
# tested with ubuntu24.04

vmuser="ubuntu"

# Install microk8s
snap install microk8s --classic --channel=1.35

microk8s status --wait-ready
for plugin in dns dashboard hostpath-storage ingress ; do
    microk8s enable $plugin
done

# Install kubectl
#alias kubectl='microk8s kubectl'
#kubectl_ver="$(curl -L -s https://dl.k8s.io/release/stable.txt)"
kubectl_ver="v1.35.0"
curl -L "https://dl.k8s.io/release/${kubectl_ver}/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl
chmod +x /usr/local/bin/kubectl

# Configure $vmuser access to k8s
adduser $vmuser microk8s
#newgrp microk8s

mkdir -p /home/$vmuser/.kube
chown -R $vmuser:$vmuser /home/$vmuser/.kube
chmod 700 /home/$vmuser/.kube

microk8s config >/root/.kube/config
microk8s config >/home/$vmuser/.kube/config
chown $vmuser:$vmuser /home/$vmuser/.kube/config

# Stop and start cluster
#microk8s stop
#microk8s start