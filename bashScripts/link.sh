#! /bin/bash
dotfiles=$HOME/.dotfiles

# Directory links:
ln -srf $dotfiles/alacritty $HOME/.config/
ln -srf $dotfiles/wlogout $HOME/.config/
ln -srf $dotfiles/waybar $HOME/.config/
ln -srf $dotfiles/nvim $HOME/.config/
ln -srf $dotfiles/hypr $HOME/.config/

# Single file links:
ln -srf $dotfiles/starship.toml $HOME/.config/starship.toml
ln -srf $dotfiles/.bashrc $HOME/.bashrc

# Links that require root privileges:
sudo ln -srf $dotfiles/kanata/config.kbd /etc/kanata/config.kbd
