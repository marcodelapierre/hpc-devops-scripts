#!/bin/bash
# script to be run with normal user
# tested with ubuntu24.04

vmuser="ubuntu"

# Install Slinky Bridge using hack/kind.sh
cd $HOME
git clone https://github.com/SlinkyProject/slurm-bridge
cd slurm-bridge
git checkout v1.2.3

export PATH=$PATH:/usr/local/go/bin

mkdir -p "$HOME/kind-tmp"
TMPDIR="$HOME/kind-tmp" hack/kind.sh --core

# Example of job submission
#kubectl apply -f hack/examples/job/single.yaml
#kubectl get jobs -n slurm-bridge
