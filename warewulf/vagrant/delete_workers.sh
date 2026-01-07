#!/bin/bash

NUMNODES=1

for i in $(seq 1 $NUMNODES) ; do
  NID=$(printf "%02g" $i)
  VM_NAME="node${NID}"

  virsh destroy "$VM_NAME"
  virsh undefine "$VM_NAME" --nvram
done
