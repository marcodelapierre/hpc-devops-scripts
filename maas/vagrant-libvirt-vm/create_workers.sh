#!/bin/bash

CPUS=2
MEM=4096
DISK=8
NETWORK="default"
VIRT_TYPE="qemu"
VIRT_TYPE="kvm"

for i in 1 ; do
  NID=$(printf "%02g" $i)
  VM_NAME="node${NID}"
  
  echo "Creating $VM_NAME..."
  
  virt-install \
    --name "$VM_NAME" \
    --vcpus $CPUS \
    --memory $MEM \
    --disk size=$DISK,bus=virtio \
    --network network=$NETWORK,model=virtio \
    --pxe \
    --boot network \
    --virt-type $VIRT_TYPE \
    --os-variant ubuntu22.04 \
    --noautoconsole
    
  echo "...Done creating $VM_NAME."
done
