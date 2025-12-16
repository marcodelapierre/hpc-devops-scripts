#!/bin/bash

cont="clunode"
key="id_ed25519"
pass="root"

ssh-keygen -t ed25519 -P "" -f $key

docker build \
  -t $cont \
  --build-arg KEY=$key \
  --build-arg PASS=$pass \
  .

rm $key ${key}.pub
