#!/bin/bash

juju add-model simple-db

juju deploy mysql --channel 8.0/stable

juju status --relations --color
#juju status --relations --color --watch 1s

# Take down the deployment
# juju destroy-model simple-db --destroy-storage
