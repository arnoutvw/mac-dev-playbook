#!/bin/zsh

if ! [ -x "$(command -v pip3)" ]; then
    export PATH="$HOME/Library/Python/3.8/bin:/opt/homebrew/bin:$PATH"
    if ! [ -x "$(command -v pip3)" ]; then
        sudo pip3 install --upgrade pip
    end
end

if ! [ -x "$(command -v ansible)" ]; then
  pip3 install ansible
end

ansible-galaxy install -r requirements.yml
ansible-playbook main.yml --ask-become-pass