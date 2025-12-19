#!/bin/bash

maas admin machines create             architecture="amd64/generic"             mac_addresses="0e:00:00:00:00:01"             hostname=node01             power_type=virsh power_parameters='{"power_address": "qemu+ssh://mdelapierre@192.168.121.1/system", "power_id": "node01"}'
