#!/bin/bash

docker build -t word-cloud-generator -f Dockerfile.multi .
docker run --rm -p 8888:8888 -it word-cloud-generator