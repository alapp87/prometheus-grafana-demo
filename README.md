## Install infra
```
scripts/createInfra.sh

```

## Install nginx cert-manager lets-encrypt
```
helm upgrade --install  ingress-nginx ingress-nginx/ingress-nginx \
    --namespace ingress-nginx --create-namespace \
    -f  values/values-ingress-nginx.yaml --set service.loadBalancerIP="x.x.x.x"

helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager --create-namespace \
  --version v1.1.0 \
  --set installCRDs=true

kubectl apply -f  lets-encrypt/templates/


```
## kube-prometheus-stack
```
helm upgrade --install prometheus prometheus-community/kube-prometheus-stack \
    -f values/values-kube-prometheus-stack.yaml \
    --version 12.7.0 \
    --namespace prometheus --create-namespace

```
