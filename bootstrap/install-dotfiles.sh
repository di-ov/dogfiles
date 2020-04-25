#!/bin/sh

DOTFILES_DIR=~/dogfiles

# Create symlics and remove existing destination files
ln -sfv $DOTFILES_DIR/i3wm/config ~/.config/i3/config
mkdir -p ~/.config/i3status && ln -sfv $DOTFILES_DIR/activity-bar/i3status/config ~/.config/i3status/config

ln -sfv $DOTFILES_DIR/zsh/.zshrc ~/.zshrc
ln -sfv $DOTFILES_DIR/.xinitrc ~/.xinitrc
ln -sfv $DOTFILES_DIR/.profile ~/.zprofile