#!/bin/bash
docker build . -t machine_learning

docker run -it -d -p 2908:8888 -v $(pwd):/home/jovyan/work --name ml_docker -u root machine_learning
