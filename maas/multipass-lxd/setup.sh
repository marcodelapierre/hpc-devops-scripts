#!/bin/bash

multipass launch --name maas -c4 -m8GB -d32GB --timeout 3600 --cloud-init maas.yaml
