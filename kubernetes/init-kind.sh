#!/bin/bash
# script to be run with sudo
# tested with ubuntu24.04

vmuser="ubuntu"

# Install Go
go_ver="1.25.6"
curl -L "https://go.dev/dl/go${go_ver}.linux-amd64.tar.gz" -o /tmp/go.tar.gz
tar -C /usr/local -xzf /tmp/go.tar.gz
export PATH=$PATH:/usr/local/go/bin
echo 'export PATH=$PATH:/usr/local/go/bin' >> /etc/profile.d/Z99-go.sh

# Install Docker
# Add Docker's official GPG key:
apt update
apt install -y ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF
apt update
# Install the packages
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add $vmuser to the docker group
adduser $vmuser docker
#newgrp docker

# Install kind
# For AMD64 / x86_64
curl -Lo /usr/local/bin/kind https://kind.sigs.k8s.io/dl/v0.31.0/kind-linux-amd64
chmod +x /usr/local/bin/kind

kind create cluster
#kind delete cluster

# Install kubectl
#kubectl_ver="$(curl -L -s https://dl.k8s.io/release/stable.txt)"
kubectl_ver="v1.35.0"
curl -L "https://dl.k8s.io/release/${kubectl_ver}/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl
chmod +x /usr/local/bin/kubectl

# Configure $vmuser access to k8s
mkdir -p /home/$vmuser/.kube
chown -R $vmuser:$vmuser /home/$vmuser/.kube
chmod 700 /home/$vmuser/.kube

kind get kubeconfig >/root/.kube/config
kind get kubeconfig >/home/$vmuser/.kube/config
chown $vmuser:$vmuser /home/$vmuser/.kube/config
