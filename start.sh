#!/bin/bash
export GMINER_COMMON="--server localhost:3333 --user your_wallet_here --pass gpu_miner"
export GMINER_LAST="gminer/miner $GMINER_COMMON"
export GMINER_39="gminer39/miner $GMINER_COMMON"
./mm.js -p=gulf.moneroocean.stream:11024 --ethash="$GMINER_LAST --algo ethash --proto stratum" --kawpow="$GMINER_LAST --algo kawpow" --c29s="$GMINER_LAST --algo cuckaroo29s" --c29b="$GMINER_LAST --algo cuckaroo29b" --c29v="$GMINER_39 --algo cuckarood29v"
