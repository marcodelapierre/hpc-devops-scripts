#!/bin/bash

nnodes="2"
net="clunet"

for n in $(seq $nnodes) ; do
  lxc stop n$n
  lxc delete n$n
done

lxc network delete $net
