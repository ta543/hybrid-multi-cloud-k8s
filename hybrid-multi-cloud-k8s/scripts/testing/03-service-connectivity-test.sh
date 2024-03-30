#!/bin/bash
echo "Starting service connectivity tests..."

# Example service names and namespaces
service_name="my-service"
namespace="default"

# Get pods in the namespace
pods=$(kubectl get pods -n $namespace -l app=my-app -o jsonpath='{.items[*].metadata.name}')

# Loop over the pods and test connectivity to the service
for pod in $pods; do
    echo "Testing connectivity from pod $pod to service $service_name..."
    if ! kubectl exec -n $namespace $pod -- curl -sS $service_name:8080; then
        echo "Failed to connect from pod $pod to service $service_name"
        exit 1
    else
        echo "Successfully connected from pod $pod to service $service_name"
    fi
done

echo "Service connectivity tests completed."
