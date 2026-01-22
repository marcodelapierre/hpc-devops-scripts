#!/bin/bash

ns="echo"
dep="echo"

kubectl create ns $ns
kubectl create deployment $dep --image=kicbase/echo-server:1.0 -n $ns
kubectl expose deployment $dep --type=NodePort --port=8080 --name=${dep}-service -n $ns
kubectl port-forward service/${dep}-service 7080:8080 -n $ns

# Test from outside the cluster
#vagrant ssh -- -L 7080:localhost:7080
# open http://localhost:7080 in browser


#kubectl delete deployment $dep -n $ns --cascade=foreground
#kubectl delete ns $ns
