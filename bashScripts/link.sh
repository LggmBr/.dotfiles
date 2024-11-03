#! /bin/bash
dotfiles=$HOME/.dotfiles

ln -srf $dotfiles/nvim $HOME/.config/nvim
ln -srf $dotfiles/starship.toml $HOME/.config/starship.toml

sudo ln -srf $dotfiles/kanata/config.kbd /etc/kanata/config.kbd
