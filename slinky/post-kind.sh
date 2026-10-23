#!/bin/bash
# script to be run with sudo
# tested with ubuntu24.04

vmuser="ubuntu"

# Enable $vmuser access to k8s
kind get kubeconfig >/root/.kube/config
kind get kubeconfig >/home/$vmuser/.kube/config
chown $vmuser:$vmuser /home/$vmuser/.kube/config
