#!/bin/bash

sudo apt install zsh;

curl -sS https://starship.rs/install.sh | sh;
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting;

touch ~/.zsh_history;
mv ./.zshrc ~/.zshrc;
mv ./starship.toml ~/.config/starship.toml;
