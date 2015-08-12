#!/bin/sh
if [ ! -d manifesto ]; then
  git clone https://github.com/projectara/manifesto
fi

if [ ! -d nuttx ]; then
  git clone git@github.com:nklabs/Nuttx.git nuttx
fi

if [ ! -d nuttx/apps/ara/nklabs ]; then
  git clone -b  projectara_nuttx_nklabs_apps git@github.com:nklabs/NuttxApps.git nuttx/apps/ara/nklabs
fi
