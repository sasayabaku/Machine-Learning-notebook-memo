#!/bin/bash
docker build -t machine_learning-gpu -f Dockerfile-gpu .

docker run -it -d --gpus 0 -p 2908:8888 -v $(pwd):/tf/work --name ml_docker-gpu -u root machine_learning-gpu
