#!/bin/bash

multipass launch --name maas -c4 -m8GB -d32GB --timeout 3600 --cloud-init maas.yaml 24.04

# in your web browser: http://<MAAS_IP>:5240/MAAS
