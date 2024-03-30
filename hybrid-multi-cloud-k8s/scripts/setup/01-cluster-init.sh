#!/bin/bash
echo "Initializing Kubernetes master node..."
kubeadm init --pod-network-cidr=192.168.0.0/16
echo "Setting up kubeconfig..."
mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config
echo "Applying Calico CNI..."
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
echo "Cluster initialization is complete."
