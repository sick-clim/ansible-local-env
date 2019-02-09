#!/bin/sh
set -e
readonly DEV_PATH=$HOME/dev

if ! which ansible; then
    sudo apt update && sudo apt upgrade -y
    sudo apt install ansible
fi

git clone https://github.com/sick-clim/ansible-local-env.git $DEV_PATH/github.com/sick-clim/ansible-local-env

cd $DEV_PATH/github.com/sick-clim/ansible-local-env
ansible-playbook local-devenv.yml
