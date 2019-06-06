#!/bin/bash
if [ "$1" = "" ]; then
	SOURCE_DIR=$(pwd)
else
	SOURCE_DIR=$1
fi
echo "Working directory set to: ${SOURCE_DIR}"
docker run -it --rm \
  --runtime=nvidia \
  -v "$SOURCE_DIR"/:/data \
  -w /data mullinix/nvidia-cuda-devel-gcc-gsl

