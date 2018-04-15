#!/bin/bash
./configure --prefix=/usr \
            --disable-static \
            --enable-libgdbm-compat
make -j $SHED_NUM_JOBS
make DESTDIR=${SHED_FAKE_ROOT} install
