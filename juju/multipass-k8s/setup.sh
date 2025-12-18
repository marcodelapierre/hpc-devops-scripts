#!/bin/bash

mach="juju"

multipass launch --name $mach -c4 -m8GB -d50GB 24.04

multipass transfer init-microk8s.sh $mach:/home/ubuntu/
multipass exec $mach -- sudo mv /home/ubuntu/init-microk8s.sh /root/

multipass exec $mach -- sudo /root/init-microk8s.sh
multipass exec $mach -- sudo snap install juju
multipass exec $mach -- juju clouds --client
multipass exec $mach -- juju bootstrap microk8s juju-controller
