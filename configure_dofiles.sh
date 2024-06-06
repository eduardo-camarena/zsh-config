#!/bin/bash

sudo apt update && sudo apt upgrade
sudo apt install stow

mv ./dotfiles ~/dotfiles
export CURRENT_DIR=$(pwd)
cd ~/dotfiles
stow .
cd $CURRENT_DIR
unset CURRENT_DIR
