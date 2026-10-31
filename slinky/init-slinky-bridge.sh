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
# first time it installs Go deps and then Docker command fails
# for now I have to re-run this manually
# see this old Vagrant issue: https://github.com/hashicorp/vagrant/pull/10399
TMPDIR="$HOME/kind-tmp" hack/kind.sh --core || true

# Example of job submission
#kubectl apply -f hack/examples/job/single.yaml
#kubectl get jobs -n slurm-bridge
