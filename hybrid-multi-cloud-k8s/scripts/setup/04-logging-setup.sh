#!/bin/bash
echo "Adding Elastic Helm chart repository..."
helm repo add elastic https://helm.elastic.co
helm repo update
echo "Installing Elasticsearch..."
helm install elasticsearch elastic/elasticsearch
echo "Installing Kibana..."
helm install kibana elastic/kibana
echo "Logging setup is complete."
