#!/bin/sh
mkdir -p stage
docker run -it --privileged -v $PWD:/workspace:ro -v $PWD/stage:/workspace/stage moander/photon-ubuntu-dev

