
# GPT: Generative Pre-trained Transformer


# Hands on
## Build
```bash
$ docker build -t gpt-train .
```

## Run Container
```bash
$ docker run -it -d -p 8888:8888 -v $(pwd)/notebook:/home/jovyan/ --name ml_docker -u root gpt-train
```

access http://localhost:8888