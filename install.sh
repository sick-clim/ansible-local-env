#!/bin/sh
set -e
readonly DEV_PATH=$HOME

if ! which ansible; then
    sudo apt-add-repository ppa:ansible/ansible -y
    sudo apt update && sudo apt upgrade -y
    sudo apt install -y ansible
fi

git clone https://github.com/sick-clim/ansible-local-env.git $DEV_PATH/src/github.com/sick-clim/ansible-local-env

cd $DEV_PATH/src/github.com/sick-clim/ansible-local-env
ansible-playbook local-devenv.yml --ask-become-pass

