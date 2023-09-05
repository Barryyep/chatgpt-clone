#!/bin/bash

# 停止并删除旧的 Docker 容器（如果存在）
docker stop RockFlowGPT || true
docker rm RockFlowGPT || true

# 构建新的 Docker 镜像
docker build -t rockflowgpt_image .

# 运行新的 Docker 容器
docker run --restart always --name RockFlowGPT -p 9010:9010 -d rockflowgpt_image
