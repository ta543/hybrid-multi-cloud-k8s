#!/bin/bash
echo "Applying default deny all ingress traffic policy..."
kubectl apply -f - <<EOP
kind: NetworkPolicy
apiVersion: networking.k8s.io/v1
metadata:
  name: default-deny-ingress
  namespace: default
spec:
  podSelector: {}
  policyTypes:
  - Ingress
EOP
echo "Network policies setup is complete."
