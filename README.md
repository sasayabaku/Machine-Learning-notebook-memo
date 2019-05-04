# Machine-Learning
This repository is put source code for public.

# Launch Container

```bash
$ chmod 744 build_env.sh
$ ./build_env.sh
```

## Get Jupyter Token

```bash
$ docker exec -it machine_learning /bin/bash
(In container) $ jupyter notebook list

http://0.0.0.0:8888/?token=ca989b598222e3a10bfef7f2b4b8d83cbff3107a1624fa02 :: /home/jovyan
```
Access http://localhost:2908 and use **jupyter token** code