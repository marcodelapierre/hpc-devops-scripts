#!/bin/bash

nnodes="2"
cont="clunode"
net="clunet"

for n in $(seq $nnodes) ; do
  docker stop n$n
done

docker network rm $net
