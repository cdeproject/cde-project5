#!/usr/bin/env bash

echo "===== Install kubectl on Ubuntu 22.04 LTS ====="

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/local/bin/
kubectl version -o yaml


