#!/bin/bash

nnodes="2"
net="clunet"

for n in $(seq $nnodes) ; do
  docker stop n$n
done

docker network rm $net
