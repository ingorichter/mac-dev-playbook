#!/usr/bin/env bash

set -euo pipefail

# ensure xcode is working fine
# download and install command line tools
XCodeDevToolsPath=$(xcode-select --print-path)

${XCodeDevToolsPath}/usr/bin/pip3

if [ $? eq 127 ]; then
	xcode-select --install
fi

# install pip
# sudo easy_install pip
pip3 install --upgrade pip
pip3 install ansible

# check out ansible scripts into local directory
mkdir -p ~/ansible-setup && cd ~/ansible-setup
# clone the repo with the ansible scripts
# git clone 

