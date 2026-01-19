#!/bin/bash

for i in 1 ; do
  NID=$(printf "%02g" $i)
  VM_NAME="node${NID}"

  virsh destroy "$VM_NAME"
  virsh undefine "$VM_NAME" --nvram
done
