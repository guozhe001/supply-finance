#!/bin/bash

# 使用下面的命令生成加密材料：
cryptogen generate --config=config/crypto-config.yaml --output="./organizations"
# 使用下面的命令生成系统创世纪区块：
configtxgen -profile TestOrgsOrdererGenesis -channelID system-channel -outputBlock ./system-genesis-block/genesis.block
# 使用docker-compose.yml配置文件启动:
docker-compose -f ./docker/docker-compose.yml up -d
