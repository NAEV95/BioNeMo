#!/bin/bash

# Step 1: Set your NGC API Key
export NGC_CLI_API_KEY=<YOUR_API_KEY>
# Step 2: Run docker login
docker login --username '$oauthtoken' --password $NGC_CLI_API_KEY nvcr.io

# Step 3: Run the container
export LOCAL_NIM_CACHE=~/.cache/nim
docker run --rm --name alphafold2 --runtime=nvidia \
  -e NGC_CLI_API_KEY \
  -v $LOCAL_NIM_CACHE:/opt/nim/.cache \
  -p 8000:8000 \
  nvcr.io/nim/deepmind/alphafold2:1.0.0

