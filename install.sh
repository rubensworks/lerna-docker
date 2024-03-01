#!/bin/bash
# Installs Lerna Docker

if [ ! -d "$HOME/.lerna-docker" ]; then
    echo "Installing Lerna Docker"
    git clone --depth=1 --recursive https://github.com/rubensworks/lerna-docker.git "$HOME/.lerna-docker"
    dir="$HOME/.lerna-docker"
    echo "export PATH=\"$dir/bin:\$PATH\"" >> ~/.bash_profile
    
    npm install -g verdaccio@5.29.2 npm-cli-adduser npm-cli-login
else
    echo "Lerna Docker is already installed at $HOME/.lerna-docker"
fi
