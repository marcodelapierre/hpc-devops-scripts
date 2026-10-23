#!/bin/bash
# script to be run with sudo
# tested with ubuntu24.04

vmuser="ubuntu"

# Install Slinky Operator using hack/kind.sh
cd $HOME
git clone https://github.com/SlinkyProject/slurm-operator
cd slurm-operator
git checkout v1.2.3

sleep 5
# somehow this fails when run within Vagrant, but goes ahead when run manually
hack/kind.sh --core

# Example of job submission
#
#
