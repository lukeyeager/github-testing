#!/bin/bash

set +e

if [ "$#" -ne 1 ]
then
    echo "Usage: $0 tag"
    exit
fi

set +x

sed -i "1s/.*/print('$1')/" main.py
git commit -a -m "Mark v$1"
git tag -a v$1 -m "$1"
