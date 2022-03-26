#!/usr/bin/env bash

set -euo pipefail
# fix path
export N_PREFIX="${HOME}/n"
# export PATH="$HOME/Library/Python/3.8/bin:/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/bin:${PATH}"

~/Library/Python/3.8/bin/ansible-galaxy install -r requirements.yml
~/Library/Python/3.8/bin/ansible-playbook -i inventory --ask-become-pass playbook.yml

#  Example to start at specific task
# ansible-playbook -i inventory --ask-become-pass playbook.yml --start-at-task "Check if dot tool is already installed" -v
