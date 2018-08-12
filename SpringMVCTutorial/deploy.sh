#!/bin/bash
docker ps -a | grep mvc-tutorial
if [ $? -eq 0 ];then
	echo "Deleting containers...."
	docker rm -f mvc-tutorial
fi
echo "Creating new..."
docker run --name mvc-tutorial -d -p 8081:8080 iamisb/mvc-tutorial:latest