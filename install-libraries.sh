#!/bin/bash
# This script will install other libraries to complement the SDK and give a better out-of-the-box support

cd /
# tiny3D for PSL1GHT (https://github.com/wargio/tiny3D)
git clone https://github.com/wargio/tiny3D.git
make -C tiny3D
rm -R tiny3D

# CG Toolkit (https://developer.nvidia.com/cg-toolkit)
apt-get -y install nvidia-cg-toolkit

# PS3SOUNDLIB FOR PSL1GHT V2 (https://github.com/wargio/ps3soundlib)
git clone https://github.com/wargio/ps3soundlib
make -C ps3soundlib/libs install
rm -R ps3soundlib
