#!/usr/bin/env bash

gcloud container clusters get-credentials cluster-1 --zone us-east1

# And use the cluster we just made
kubectl config set-cluster cluster-1
