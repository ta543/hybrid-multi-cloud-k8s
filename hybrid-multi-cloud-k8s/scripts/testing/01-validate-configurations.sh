echo "Starting Kubernetes configurations validation..."

# Check if kubectl is installed
if ! command -v kubectl &> /dev/null; then
    echo "kubectl could not be found, please install it."
    exit 1
fi

echo "kubectl is installed."

# Check for kubeconfig file
if [[ -z "${KUBECONFIG}" && ! -f "$HOME/.kube/config" ]]; then
    echo "Kubeconfig file is missing."
    exit 1
else
    echo "Kubeconfig is present."
fi

# Test access to the Kubernetes cluster
if kubectl cluster-info; then
    echo "Access to Kubernetes cluster confirmed."
else
    echo "Cannot access Kubernetes cluster."
    exit 1
fi

# Optionally, check the contexts you have configured
echo "Kubernetes contexts:"
kubectl config get-contexts

echo "Kubernetes configurations validation completed."
