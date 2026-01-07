#!/bin/bash

NUMNODES=1
CPUS=2
MEM=4096
DISK=10
NETWORK="maas-net"

for i in $(seq 1 $NUMNODES) ; do
  NID=$(printf "%02g" $i)
  VM_NAME="node${NID}"
  MAC_ADDR="0e:00:00:00:00:${NID}"
  
  echo "Creating $VM_NAME..."
  
  virt-install \
    --name "$VM_NAME" \
    --vcpus $CPUS \
    --memory $MEM \
    --disk size=$DISK,bus=virtio \
    --network network=$NETWORK,mac=$MAC_ADDR,model=virtio \
    --pxe \
    --boot network \
    --virt-type kvm \
    --os-variant ubuntu24.04 \
    --noautoconsole
    
  echo "...Done creating $VM_NAME."
done
