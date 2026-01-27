#!/bin/bash

juju switch juju-controller-maas:controller

juju deploy juju-dashboard
juju integrate juju-dashboard controller
# This requires hostname to be set for the machine
#juju expose juju-dashboard

# Check deployment status
#juju status --relations --color --watch 1s

# In Juju machine
#juju dashboard

# In local machine
# Port will be in output of command above
#machine=
#port=
#ssh -L $port:localhost:$port $machine
