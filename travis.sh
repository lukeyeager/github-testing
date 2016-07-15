#!/bin/bash

BUILD_DIR=~/build
BUILD_FILE=${BUILD_DIR}/time.txt

if [ -d "$BUILD_DIR" ] && [ -e "$BUILD_FILE" ]; then
    echo "Build is cached"
else
    echo "Build is not cached"
    mkdir -p $BUILD_DIR
    TIME=`date`
    echo $TIME >> $BUILD_FILE
fi

set -x
cat $BUILD_FILE

