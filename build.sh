#!/usr/bin/env bash
docker build . -t ssh-client
# docker run -it ssh-client
docker tag ssh-client lastdanmer/ssh-client
docker push lastdanmer/ssh-client
