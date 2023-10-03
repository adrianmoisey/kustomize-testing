# Installing ArgoCD

helm repo add argo https://argoproj.github.io/argo-helm

kubectl apply -f config-plugin.yml
helm upgrade --install my-argo-cd argo/argo-cd --version 5.46.7 --values values.yml
