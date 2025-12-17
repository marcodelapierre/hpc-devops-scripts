#!/bin/bash

nnodes="2"
cont="clunode"
net="clunet"

lxd_image_id=$(cat lxd_image_id)

#network not really needed if lxd default bridge is setup
lxc network create -t bridge $net

for n in $(seq $nnodes) ; do
  lxc launch local:$lxd_image_id n$n -n $net
done

# use:
# lxc exec n1 bash
