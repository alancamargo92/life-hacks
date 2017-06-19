# Creates a new Git repository
# Author: Alan Camargo

#!/bin/bash

if [ "$#" != 1 ]; then
    echo "You must provide the remote path."
    exit
fi

REMOTE_PATH=$1
echo "The remote path is ${REMOTE_PATH}."

git init

git remote add origin ${REMOTE_PATH}
echo "Remote repository path set to ${REMOTE_PATH}."

