#!/bin/bash
# script to be run with normal user
# tested with ubuntu24.04

vmuser="ubuntu"

# Install Slinky Operator using hack/kind.sh
cd $HOME
git clone https://github.com/SlinkyProject/slurm-operator
cd slurm-operator
git checkout v1.2.4

SCRIPT_DIR="$(readlink -f "$(dirname "$0")")"
# this edited yaml is taken from Slinky Operator v1.1.5
sed -i "/^nodesets: *{}/{
    s;^nodesets: *{};;
    r $SCRIPT_DIR/nodesets-operator.yaml
}" helm/slurm/values.yaml
sed -i 's;values-dev.yaml;values.yaml;g' helm/slurm/skaffold.yaml

export PATH=$PATH:/usr/local/go/bin

mkdir -p "$HOME/kind-tmp"
# first time it installs Go deps and then Docker command fails
# for now I have to re-run this manually
# see this old Vagrant issue: https://github.com/hashicorp/vagrant/pull/10399
TMPDIR="$HOME/kind-tmp" hack/kind.sh --core || true

# Example of job submission
#
#kubectl exec -it -n slinky slurm-controller-0 -- bash
#sbatch --wrap 'echo Ciao' -p slinky # wait a few minutes for node deploy
#kubectl exec -it -n slinky slurm-worker-slinky-0 -- cat /tmp/slurm-1.out 
