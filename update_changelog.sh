#!/bin/bash

set +e
set +x

TIME=`date '+%s'`

echo $TIME >> changelog.txt
git commit -a -m "Update changelog - $TIME"
