#!/bin/bash
# script to be run with sudo
# tested with ubuntu24.04

vmuser="ubuntu"

# Install Canonical Kubernetes
snap install k8s --classic --channel=1.35-classic/stable
k8s bootstrap
k8s status --wait-ready --timeout 5m
#snap remove k8s --purge

for plugin in dns ingress local-storage ; do
    k8s enable $plugin
done

# Install kubectl
#alias kubectl='k8s kubectl'
#kubectl_ver="$(curl -L -s https://dl.k8s.io/release/stable.txt)"
kubectl_ver="v1.35.0"
curl -L "https://dl.k8s.io/release/${kubectl_ver}/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl
chmod +x /usr/local/bin/kubectl

# Configure $vmuser access to k8s
# Note: there is no dedicated user group for canonical k8s
# Running k8s commands requires sudo

mkdir -p /home/$vmuser/.kube
chown -R $vmuser:$vmuser /home/$vmuser/.kube
chmod 700 /home/$vmuser/.kube

mkdir -p /root/.kube
chmod 700 /root/.kube

k8s config >/root/.kube/config
k8s config >/home/$vmuser/.kube/config
chown $vmuser:$vmuser /home/$vmuser/.kube/config
