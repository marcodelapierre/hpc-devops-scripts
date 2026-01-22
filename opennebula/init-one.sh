#!/bin/bash
# script to be run with sudo
# tested with ubuntu24.04

vmuser="ubuntu"

# Install OpenNebula using miniONE
wget 'https://github.com/OpenNebula/minione/releases/download/v7.0.1/minione'
chmod +x minione

./minione

# Force a refresh of the localhost status
sudo -u oneadmin onehost sync --force
