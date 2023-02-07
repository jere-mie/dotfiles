#!/bin/sh
# basic install stuff
sudo apt update
sudo apt upgrade
sudo apt install gcc python3 python3-pip wget htop vim git screen dnsutils tmux make curl

# vim config
curl -o- https://raw.githubusercontent.com/jere-mie/dotfiles/main/scripts/install-vimrc.sh | bash

# installing caddy
sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo tee /etc/apt/trusted.gpg.d/caddy-stable.asc
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
sudo apt update
sudo apt install caddy
