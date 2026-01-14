#!/bin/bash

juju add-model chat-app

juju deploy mattermost-k8s --constraints "mem=2G"
juju deploy postgresql-k8s --channel 14/stable --trust --config profile=testing -n 2
juju deploy self-signed-certificates

juju integrate self-signed-certificates postgresql-k8s
juju integrate postgresql-k8s:db mattermost-k8s

juju status --relations --color
#juju status --relations --color --watch 1s

# Try
# Get IP from output of juju status> Unit> mattermost-k8s/0
# curl <that-IP>:8065/api/v4/system/ping

# Take down the deployment
# juju destroy-model chat-app --destroy-storage
