#!/bin/bash

ns="nginx"
dep="nginx"

kubectl create ns $ns
kubectl create deployment $dep --image=nginx -n $ns
kubectl expose deployment $dep --type=NodePort --port=80 --name=${dep}-service -n $ns
kubectl port-forward service/${dep}-service 7080:80 -n $ns

# Test inside the cluster
#curl http://localhost:7080

# Test from outside the cluster
#vagrant ssh -- -L 7080:localhost:7080
#curl http://localhost:7080
# or open http://localhost:7080 in browser


#kubectl delete deployment $dep -n $ns --cascade=foreground
#kubectl delete ns $ns
