#!/bin/sh

if [ ! -d arm ]; then
  URL=https://launchpad.net/gcc-arm-embedded/4.8/4.8-2014-q3-update/+download/gcc-arm-none-eabi-4_8-2014q3-20140805-linux.tar.bz2
  mkdir -p arm
  wget -qO- $URL | tar -C arm/ -xjf -
fi

if [ ! -d manifesto ]; then
  git clone https://github.com/projectara/manifesto
fi

if [ ! -d nuttx ]; then
  git clone git@github.com:nklabs/Nuttx.git nuttx
fi

if [ ! -d nuttx/apps/ara/nklabs ]; then
  git clone -b  projectara_nuttx_nklabs_apps git@github.com:nklabs/NuttxApps.git nuttx/apps/ara/nklabs
fi
