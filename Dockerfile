FROM ubuntu:22.04

RUN : && \
    apt-get update && \
    apt-get install -y curl gettext-base

RUN curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv5.1.1/kustomize_v5.1.1_linux_amd64.tar.gz -o kustomize.tar.gz && \
    tar zxvf kustomize.tar.gz && \
    cp kustomize /usr/bin/kustomize && \
    chmod +x /usr/bin/kustomize
COPY substitute.sh /usr/bin/
