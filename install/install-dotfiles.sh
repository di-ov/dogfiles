#!/bin/sh

DOTFILES_DIR=~/dogfiles

# Create symlics and remove existing destination files
mkdir -p ~/.config/i3 && ln -sfv $DOTFILES_DIR/i3wm/config ~/.config/i3/config
mkdir -p ~/.config/i3status && ln -sfv $DOTFILES_DIR/activity-bar/i3status/config ~/.config/i3status/config

ln -sfv $DOTFILES_DIR/zsh/.zshrc ~/.zshrc
ln -sfv $DOTFILES_DIR/.xinitrc ~/.xinitrc
ln -sfv $DOTFILES_DIR/.zprofile ~/.zprofile
mkdir -p ~/.config/alacritty && ln -sfv $DOTFILES_DIR/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml