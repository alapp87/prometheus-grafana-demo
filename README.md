# gitops-demo
```
helm repo add argo https://argoproj.github.io/argo-helm
helm upgrade --install argo-cd argo/argo-cd -f argo-cd/values.yaml --namespace  argo-cd --create-namespace
```

# Slack webhooks

```
curl -X POST --data-urlencode "payload={\"channel\": \"#alerttest\", \"username\": \"webhookbot\", \"text\": \"This is posted to #alerttest and comes from a bot named webhookbot.\", \"icon_emoji\": \":ghost:\"}" https://hooks.slack.com/services/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

```