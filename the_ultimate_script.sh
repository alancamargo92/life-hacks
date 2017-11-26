# The ultimate script

# This beauty here installs:

# Git
# Android Studio
# Android SDK
# Sublime Text
# Spotify
# Oh my zsh
# Google Chrome
# Skype
# Arduino IDE
# Fritzing

# Author: Alan Camargo

#!/bin/bash

echo "Installing Git..."
sudo apt install git

echo "\nInstalling Ubuntu Make..."
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y
sudo apt update
sudo apt install ubuntu-make -y

echo "\nInstalling Android Studio..."
umake android

echo "\nInstalling Android SDK..."
sudo apt install android-tools-adb

echo "\nInstalling Sublime Text 3..."
wget -q0 - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text

echo "\nInstalling Spotify..."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client

echo "\nInstalling Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "\nInstalling Google Chrome..."
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

echo "\nInstalling Skype..."
curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
sudo apt update
sudo apt install skypeforlinux

echo "\nInstalling Arduino IDE..."
sudo apt install arduino arduino-core
sudo apt install gcc-avr avr-libc
sudo usermod -aG dialout $USER

echo "\nInstalling Fritzing..."
sudo apt install fritzing

echo "\nCleaning up all the mess..."
sudo apt autoclean
sudo apt autoremove

echo "\nYou\'re all set!"
