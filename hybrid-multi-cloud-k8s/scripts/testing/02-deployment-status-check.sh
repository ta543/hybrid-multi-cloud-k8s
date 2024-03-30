#!/bin/bash
echo "Checking the status of Kubernetes deployments..."

# List all deployments in all namespaces
kubectl get deployments --all-namespaces

# Check each deployment's status in the default namespace
deployments=$(kubectl get deployments -o name)
for deploy in $deployments; do
    echo "Checking deployment: $deploy"
    kubectl rollout status $deploy
done

echo "Deployment status checks completed."
