# gitops-demo
```
helm repo add argo https://argoproj.github.io/argo-helm
helm upgrade --install argo-cd argo/argo-cd -f argo-cd/values.yaml --namespace  argo-cd --create-namespace
```

## kube-prometheus-stack
```
helm upgrade --install prometheus prometheus-community/kube-prometheus-stack \
    -f values/values-kube-prometheus-stack.yaml \
    --version 12.7.0 \
    --namespace prometheus --create-namespace

```
