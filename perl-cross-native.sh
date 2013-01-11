#!/bin/sh
set -e
set -x

if [ -f config.h ]; then
	rm config.h
fi
if [ -f config.sh ]; then
	rm config.sh
fi
./Configure -des -Dusedevel 2>&1 | tee ../upstream-native.log
make uudmap.h
