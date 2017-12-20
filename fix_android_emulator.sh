### Script to fix Android emulator's drivers
### Author: Alan Camargo

#!/bin/bash

echo "Installing lib64stdc++6:i386...\n"
sudo apt install lib64stdc++6:i386

echo "\nInstalling mesa-utils...\n"
sudo apt install mesa-utils

cd ~/Android/Sdk/emulator/lib64

if [ ! -e libstdc++ ]
then
    echo "\nCreating symbolic link to /usr/lib64/libstdc++..."
    mv libstdc++/ libstdc++.bak
    ln -s /usr/lib64/libstdc++.so.6 libstdc++
fi

echo "\nDone!"

