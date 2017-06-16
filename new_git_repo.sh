# Creates a new Git repository
# Author: Alan Camargo

#!/bin/bash

if [ "$#" != 1 ]; then
    echo "You must pass the path to the remote repository you are creating."
fi

