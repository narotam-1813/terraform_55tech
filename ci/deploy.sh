#!/bin/bash 
set -euo pipefail
helm --kubeconfig=$HOME/k8/config upgrade --install hello-world \
--set image.repository="$ECR_REGISTRY/hello-world" \
--set image.tag="narotam/nginx-hello-world" \
--namespace="$NAMESPACE" ./chart