#!/bin/bash
# script to be run with normal user
# tested with ubuntu24.04

vmuser="ubuntu"

# Install Slinky Bridge using hack/kind.sh
cd $HOME
git clone https://github.com/SlinkyProject/slurm-bridge
cd slurm-bridge
git checkout v1.2.4

export PATH=$PATH:/usr/local/go/bin

mkdir -p "$HOME/kind-tmp"
# required to run with v1.2.0 to v1.2.4
kind create cluster --name kind --config hack/kind.yaml --image 'kindest/node:v1.36.4@sha256:099e049362a1526b2db71494e1947aae99bd16290d7c895f2b7ea312e3cbfaed'
TMPDIR="$HOME/kind-tmp" hack/kind.sh --core

# Example of job submission
#kubectl apply -f hack/examples/job/single.yaml
#kubectl get jobs -n slurm-bridge
