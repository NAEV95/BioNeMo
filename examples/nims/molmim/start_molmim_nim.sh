#!/bin/bash

# Step 1: Set your NGC API Key
export NGC_CLI_API_KEY=<YOUR_API_KEY>

docker run --rm -it --name molmim --runtime=nvidia \
    -e CUDA_VISIBLE_DEVICES=0 \
    -e NGC_CLI_API_KEY \
    -p 8000:8000 \
    nvcr.io/nim/nvidia/molmim:1.0.0

