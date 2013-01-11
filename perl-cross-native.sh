#!/bin/sh
set -e
set -x

./Configure -des -Dusedevel 2>&1 | tee ../upstream-native.log
make uudmap.h
