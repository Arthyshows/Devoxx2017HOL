#!/bin/bash

az acs create --resource-group "devoxx-k8s-rg" \
  --location "westeurope" \
  --name "devoxx-k8s" \
  --orchestrator-type "kubernetes" \
  --dns-prefix "YOUR_DNS_PREFIX" \
  --agent-count 2 \
  --master-count 1 \
  --generate-ssh-keys