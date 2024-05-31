#!/bin/bash

sudo apt install zsh;
touch ~/.zsh_history;
mv ./.zshrc ~/.zshrc;
mv ./starship.toml ~/.config/starship.toml;
curl -sS https://starship.rs/install.sh | sh;
