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
sed -i "/^nodesets: *{}/{
    s;^nodesets: *{};;
    r $SCRIPT_DIR/nodesets-operator.yaml
}" helm/slurm/values.yaml
sed -i 's;values-dev.yaml;values.yaml;g' helm/slurm/skaffold.yaml

export PATH=$PATH:/usr/local/go/bin

mkdir -p "$HOME/kind-tmp"
TMPDIR="$HOME/kind-tmp" hack/kind.sh --core

# Example of job submission
#
#kubectl exec -it -n slinky slurm-controller-0 -- bash
#sbatch --wrap 'echo Ciao' -p slinky # wait a few minutes for node deploy
#kubectl exec -it -n slinky slurm-worker-slinky-0 -- cat ~/slurm-1.out 
