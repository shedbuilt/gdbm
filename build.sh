#!/bin/bash
./configure --prefix=/usr \
            --disable-static \
            --enable-libgdbm-compat
make -j $SHED_NUMJOBS
make DESTDIR=${SHED_FAKEROOT} install
