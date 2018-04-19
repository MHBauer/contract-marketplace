#!/bin/sh

docker rm -f solgo
rm -rf public

hugo

sleep 1 

docker build -t yo .

sleep 1

docker run --rm -ti --name solgo -p 8080:80 yo
