#!/bin/bash
echo "Adding Prometheus Helm chart repository..."
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
echo "Installing Prometheus..."
helm install prometheus prometheus-community/prometheus
echo "Monitoring setup is complete."
