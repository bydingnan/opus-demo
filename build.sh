#!/bin/bash

rm sconstruct
cp sconstruct.mt7688 sconstruct

MT7688_SDK_DIR=/opt/OpenWrt-SDK-ramips-for-linux-i486-gcc-4.8-linaro_uClibc-0.9.33.2/staging_dir
STAGING_DIR=$MT7688_SDK_DIR/toolchain-mipsel_24kec+dsp_gcc-4.8-linaro_uClibc-0.9.33.2
export STAGING_DIR=$STAGING_DIR

scons -c
scons

