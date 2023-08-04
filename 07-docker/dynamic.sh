#!/bin/bash

docker build -t hometask-image .
docker run -p 8080:80 hometask-image