#!/usr/bin/env bash

# Updates the DNS zone based on the ./*-zone files in this repo
gcloud dns record-sets import ./zone-catalyzer --zone=catalyzer-zone --delete-all-existing
