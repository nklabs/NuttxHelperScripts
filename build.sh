#!/bin/bash
set -x
BIN=build/ara-bridge-es1-debug-apbridgea-nklabs/image/nuttx.bin
TRUNCATE="truncate -s 2M $BIN"
FLASH="flashrom --programmer dediprog -w $BIN"

TARGET="ara bridge/es1-debug-apbridgea-nklabs"
BUILD="build_ara_image.sh $TARGET"

source $HOME/projectara/setupenv.source
cd nuttx

./$BUILD && $TRUNCATE && $FLASH
