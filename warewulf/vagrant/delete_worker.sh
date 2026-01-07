#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 NID"
    exit 1
fi

NID="$1"

VM_NAME="node${NID}"
virsh destroy "$VM_NAME"
virsh undefine "$VM_NAME" --nvram
