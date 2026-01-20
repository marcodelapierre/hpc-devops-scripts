#!/bin/bash

#lxc network set lxdbr0 dns.mode=none
#lxc network set lxdbr0 ipv4.dhcp=false
#lxc network set lxdbr0 ipv6.dhcp=false

lxc init \
  node01 \
  --empty \
  --vm \
  --network lxdbr0 \
  -c limits.cpu=1 \
  -c limits.memory=4GiB \
  -d root,size=8GiB \
  --project maas
#lxc start node01 --project maas

#lxc delete node01 --project maas
