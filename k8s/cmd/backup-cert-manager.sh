#!/usr/bin/env bash
# Simple script wrapping what is suggested in https://cert-manager.io/docs/tutorials/backup/
# Before using this you should make sure it is up to date with the recommendations.
#
# To restore from this backup you would do something like "kubectl apply -f cert-manager-backup.yaml"

THIS_SCRIPT_DIR=$(dirname "$(pwd)/${0}" )
kubectl get -o yaml \
     --all-namespaces \
     issuer,clusterissuer,certificates,certificaterequests > "${THIS_SCRIPT_DIR}/backups/cert-manager-backup.yaml"
