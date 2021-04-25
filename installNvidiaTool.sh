#! /bin/bash

distribution=$(. /etc/os-release;echo $ID$VERSION_ID)   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.repo | sudo tee /etc/yum.repos.d/nvidia-docker.repo
yum clean expire-cache
yum install -y nvidia-docker2
systemctl restart docker

