#!/bin/bash

# 停止容器
docker stop peer0.s1.supply.com peer0.f1.supply.com peer0.s2.supply.com orderer.supply.com peer0.core.supply.com
# 删除容器
docker rm peer0.core.supply.com peer0.s1.supply.com peer0.f1.supply.com peer0.s2.supply.com orderer.supply.com
# 删除映射的卷
docker volume prune
# 打印容器
docker ps -a
# 删除历史文件
rm -rf system-genesis-block  organizations channel-artifacts

