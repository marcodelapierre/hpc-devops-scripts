#!/bin/bash

export pass="vagrant"
export key="id_ed25519"

ssh-keygen -t ed25519 -N "" -f $key

cat ${key}.pub >>~/.ssh/authorized_keys
