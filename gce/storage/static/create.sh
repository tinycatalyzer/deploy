#!/usr/bin/env bash

# Create a static bucket for sharing between a few services with public web access..
# Files accessible at for example: https://storage.googleapis.com/wbstack-static/file.txt

gsutil mb -p catalyzer-wikistack -c STANDARD -l US-EAST1 -b on gs://catalyzer-wikistack-static/
gsutil iam ch allUsers:objectViewer gs://catalyzer-wikistack-static/
