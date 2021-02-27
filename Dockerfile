FROM cryptoandcoffee/nvidia-docker-cuda-11-base
RUN apt-fast update && \
  apt-fast install -y git wget tar unzip nodejs
RUN wget https://raw.githubusercontent.com/MoneroOcean/meta-miner/master/mm.js
RUN chmod +x mm.js

RUN wget https://github.com/develsoftware/GMinerRelease/releases/download/2.45/gminer_2_45_linux64.tar.xz ; mkdir gminer ; cd gminer && tar xf ../gminer_2_45_linux64.tar.xz ; cd ..
RUN wget https://github.com/develsoftware/GMinerRelease/releases/download/2.39/gminer_2_39_linux64.tar.xz ; mkdir gminer39 ; cd gminer39 && tar xf ../gminer_2_39_linux64.tar.xz ; cd ..

RUN export GMINER_COMMON="--server localhost:3339 --user your_wallet_here --pass gpu_miner"
RUN export GMINER_LAST="gminer/miner $GMINER_COMMON"
RUN export GMINER_39="gminer39/miner $GMINER_COMMON"
COPY mm_blank.json /mm.json
COPY start.sh /root/
ENTRYPOINT ["bash","-c","/root/start.sh"]
