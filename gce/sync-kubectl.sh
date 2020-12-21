#!/usr/bin/env bash

gcloud container clusters get-credentials catalyzer-wiki-cluster --zone us-east1

# And use the cluster we just made
kubectl config set-cluster catalyzer-wiki-cluster
