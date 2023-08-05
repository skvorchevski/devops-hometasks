#!/bin/bash

docker run -p 8081:80 -v /vagrant/index.html:/var/www/html/index.html hometask-image