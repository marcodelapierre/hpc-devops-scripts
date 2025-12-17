#!/bin/bash

export temp="clutemp"
export key="id_ed25519"
export pass="root"

ssh-keygen -t ed25519 -N "" -f $key

# lxd begin
lxc launch ubuntu:24.04 $temp

lxc exec $temp -- mkdir -p /root/.ssh
lxc file push $key $temp/root/.ssh/$key
lxc file push ${key}.pub $temp/root/.ssh/${key}.pub

lxc file push init.sh $temp/root/
lxc exec $temp -- /root/init.sh

lxc stop $temp
lxd_out=$(lxc publish $temp local:)
lxd_image_id=$(echo $lxd_out | xargs -n 1 | tail -1 | cut -c 1-12)
lxc delete $temp
echo "LXD image id is: $lxd_image_id"
echo $lxd_image_id >lxd_image_id
#lxd end

rm $key ${key}.pub
