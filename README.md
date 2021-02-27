# meta-miner-docker for use with nvidia-docker

This container will work only if you have Docker AND nvidia-docker installed and configured on the host machine.

Step 1:
Git clone the repo and replace "your_wallet_here" in Dockerfile, start.sh, and mm_blank.json.

Step 2:
```
docker build -t meta-miner .
```

Step 3:
```
nvidia-docker run -itd --name meta-miner --rm meta-miner
``` 
