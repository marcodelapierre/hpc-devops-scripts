#!/bin/bash
# script to be run with sudo
# tested with ubuntu24.04

vmuser="ubuntu"

# Install pre-requisites
# make
apt update
apt install -y make
#
# Skaffold
curl -Lo /usr/local/bin/skaffold https://storage.googleapis.com/skaffold/releases/v2.25.0/skaffold-linux-amd64
chmod +x /usr/local/bin/skaffold
#
# Helm
HELM_VERSION="4.1.1"
wget https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz
tar xzf helm-v${HELM_VERSION}-linux-amd64.tar.gz
install linux-amd64/helm /usr/local/bin/
rm -r helm-v${HELM_VERSION}-linux-amd64.tar.gz linux-amd64/


# Install Slinky Bridge using hack/kind.sh
cd $HOME
git clone https://github.com/SlinkyProject/slurm-bridge
cd slurm-bridge
git checkout v1.2.3

sleep 5

hack/kind.sh --core

# Example of job submission
#kubectl apply -f hack/examples/job/single.yaml
#kubectl get jobs -n slurm-bridge