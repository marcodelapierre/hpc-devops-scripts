#!/bin/bash

juju switch juju-controller-microk8s:controller

juju deploy juju-dashboard-k8s
juju integrate juju-dashboard-k8s controller
# This requires hostname to be set for the machine
#juju expose juju-dashboard-k8s

# Check deployment status
#juju status --relations --color --watch 1s

# In Juju machine
#juju dashboard

# In local machine
# Port will be in output of command above
#machine=
#port=
#ssh -L $port:localhost:$port $machine
