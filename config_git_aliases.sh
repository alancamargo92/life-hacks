# Configures aliases for status, pull, commit, push and checkout commands
# Author: Alan Camargo

#!/bin/bash

if [ "$#" == 1 -a "$1" = "remove" ]; then
    git config --global --remove-section alias
    echo "Old aliases removed."
fi

echo "Setting aliases..."

git config --global alias.st status
echo "git status -> git st"

git config --global alias.pl pull
echo "git pull -> git pl"

git config --global alias.cm commit
echo "git commit -> git cm"

git config --global alias.ps push
echo "git push -> git ps"

git config --global alias.co checkout
echo "git checkout -> git co"

