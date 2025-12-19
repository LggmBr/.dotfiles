#! /bin/bash
dotfiles=$HOME/.dotfiles

# Directory links:
ln -srf $dotfiles/alacritty $HOME/.config/
ln -srf $dotfiles/wlogout $HOME/.config/
ln -srf $dotfiles/waybar $HOME/.config/
ln -srf $dotfiles/nvim $HOME/.config/
ln -srf $dotfiles/hypr $HOME/.config/
ln -srf $dotfiles/tmux $HOME/.config/

# Single file links:
ln -srf $dotfiles/starship.toml $HOME/.config/starship.toml
ln -srf $dotfiles/.bashrc $HOME/.bashrc
ln -srf $dotfiles/kanata/config.kbd $HOME/.config/kanata/config.kbd

# Links that require root privileges:
sudo cp -f $dotfiles/systemd/kanata.service /etc/systemd/system/kanata.service
