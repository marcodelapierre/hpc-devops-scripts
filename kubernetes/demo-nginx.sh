#!/bin/bash

ns="nginx"
dep="nginx"

kubectl create ns $ns
kubectl create deployment $dep --image=nginx -n $ns
kubectl expose deployment $dep --type=NodePort --port=80 --name=${dep}-service -n $ns
# TODO: fix non working port setup

# Get the NodePort assigned
node_port=$(kubectl get svc ${dep}-service -n $ns -o jsonpath='{.spec.ports[0].nodePort}')
echo "Nginx is exposed on NodePort: $node_port"
echo "Bare metal k8s: You can access Nginx via http://<node-ip>:$node_port"
echo "Vagrant k8s: Use the following command to create a tunnel from host to VM:"
echo " vagrant ssh -- -L 8080:localhost:$node_port"
echo "Then access Nginx via http://localhost:8080"

#kubectl delete deployment $dep -n $ns --cascade=foreground
#kubectl delete ns $ns
