#!/bin/bash
# Installs Comunica Lerna Docker

if [ ! -d "$HOME/.comunica-lerna-docker" ]; then
    echo "Installing Comunica Lerna Docker"
    git clone --depth=1 --recursive https://github.com/comunica/lerna-docker.git "$HOME/.comunica-lerna-docker"
    dir="$HOME/.comunica-lerna-docker"
    echo "export PATH=\"$dir/bin:\$PATH\"" >> ~/.bash_profile
    
    npm install -g verdaccio@3.11.4 npm-cli-adduser
else
    echo "Comunica Lerna Docker is already installed at $HOME/.comunica-lerna-docker"
fi
