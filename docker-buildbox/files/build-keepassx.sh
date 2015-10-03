#!/usr/bin/env sh

set -e

( cd /keepassx && git pull )
mkdir /build
cd /build
cmake -DCMAKE_INSTALL_PREFIX=/installed -DCMAKE_BUILD_TYPE=Release /keepassx
make -j5
make install
