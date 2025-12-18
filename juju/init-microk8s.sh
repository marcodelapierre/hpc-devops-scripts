#!/bin/bash
# script to be run with sudo
# tested with ubuntu24.04

vmuser="ubuntu"

snap install microk8s --channel 1.28-strict

adduser $vmuser snap_microk8s
mkdir -p /home/$vmuser/.kube
chown -R $vmuser /home/$vmuser/.kube
mkdir -p /home/$vmuser/.local/share
chown -R $vmuser /home/$vmuser/.local
#newgrp snap_microk8s

microk8s status --wait-ready
microk8s enable hostpath-storage dns
snap alias microk8s.kubectl kubectl
