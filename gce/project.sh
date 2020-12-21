#!/usr/bin/env bash

# Prepare for general interaction with the cluster via gcloud in the right project and zone.

# Set our defaults for the current cluster
gcloud config set project catalyzer-wikistack
gcloud config set compute/zone us-east1
