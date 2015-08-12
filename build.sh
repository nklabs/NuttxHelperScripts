#!/bin/bash
set -x
#configs/ara/bridge/es1-debug-apbridgea-nklabs/defconfig
TARGET="ara bridge/es1-debug-apbridgea-nklabs"
BUILD=build_ara_image.sh

if [ ! -d nuttx/apps/ara/nklabs ]; then
  git clone -b  projectara_nuttx_nklabs_apps git@github.com:nklabs/NuttxApps.git nuttx/apps/ara/nklabs
fi

source $HOME/projectara/setupenv.source
cd nuttx
./$BUILD $TARGET 

truncate -s 2M build/ara-bridge-es1-debug-apbridgea/image/nuttx.bin
flashrom  --programmer dediprog -w build/ara-bridge-es1-debug-apbridgea/image/nuttx.bin
