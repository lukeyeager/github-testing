#!/bin/bash

set +e
set +x

TIME=`date`
echo $TIME >> changelog.txt
git add changelog.txt
git commit -m "Update changelog - $TIME"
