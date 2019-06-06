#!/bin/bash
#SOURCE_DIR=$1
if [ "$1" = "" ]; then
	SOURCE_DIR=$(pwd)
else
	SOURCE_DIR=$1
fi
echo $SOURCE_DIR
docker run -it --rm \
  -v "$SOURCE_DIR"/:/data \
  -w /data mullinix/nvidia-cuda-devel-gcc-gsl

