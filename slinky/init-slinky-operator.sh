#!/bin/bash
# script to be run with normal user
# tested with ubuntu24.04

vmuser="ubuntu"

# Install Slinky Operator using hack/kind.sh
cd $HOME
git clone https://github.com/SlinkyProject/slurm-operator
cd slurm-operator
git checkout v1.2.3

export PATH=$PATH:/usr/local/go/bin
hack/kind.sh --core

# Example of job submission
#
#
