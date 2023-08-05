#!/bin/bash

docker build -t hometask-image .
docker run --rm -p 8080:80 hometask-image