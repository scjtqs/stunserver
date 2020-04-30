#!/bin/bash
#默认使用 fpm版本
#builder 仅需一次
docker buildx create --use --name mybuilder
docker buildx build --tag scjtqs/stun-server:latest --platform linux/amd64,linux/arm64,linux/armhf,linux/386,linux/ppc64le,linux/s390x --push .
docker buildx rm mybuilder
