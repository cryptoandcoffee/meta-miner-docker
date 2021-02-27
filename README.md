# meta-miner-docker
# for use with nvidia-docker

Step 1:
Replace "your_wallet_here" in Dockerfile, start.sh, and mm_blank.json.

Step 2:
```
docker build -t meta-miner .
```

Step 3:
```
nvidia-docker run -itd --name meta-miner --rm meta-miner
``` 
