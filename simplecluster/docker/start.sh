#!/bin/bash

nnodes="2"
net="clunet"
cont="clunode"

docker network create -d bridge $net

for n in $(seq $nnodes) ; do
  docker run --rm -d --network $net --name n$n -h n$n $cont
done

# use:
# docker exec -it n1 bash
