#!/bin/bash

mach="maas"

multipass launch --name $mach -c4 -m8GB -d32GB 24.04

multipass transfer lxd.cfg $mach:/tmp/
multipass transfer init.sh $mach:/home/ubuntu/
multipass exec $mach -- sudo mv /home/ubuntu/init.sh /root/

multipass exec $mach -- sudo /root/init.sh

# in your web browser: http://<MAAS_IP>:5240/MAAS
