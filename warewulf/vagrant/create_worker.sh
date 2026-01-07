#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 NID"
    exit 1
fi

CPUS=2
MEM=4096
DISK=10
NETWORK="maas-net"

NID="$1"

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
  --os-variant rocky9 \
  --noautoconsole
  
echo "...Done creating $VM_NAME."
