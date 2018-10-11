#!/bin/bash
# Configure
./configure --prefix=/usr \
            --disable-static \
            --enable-libgdbm-compat &&
# Build and Install
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install
