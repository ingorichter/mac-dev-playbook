#!/usr/bin/env bash

set -euo pipefail

# ensure xcode is working fine
# download and install command line tools
xcode-select --install

# install pip
# sudo easy_install pip
sudo pip3 install --upgrade pip
sudo -H pip3 install ansible

# check out ansible scripts into local directory
mkdir -p ~/ansible-setup && cd ~/ansible-setup
# clone the repo with the ansible scripts
# git clone 

