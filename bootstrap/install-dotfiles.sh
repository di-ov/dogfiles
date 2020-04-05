#!/bin/sh

DOTFILES_DIR=~/dogfiles

# Create symlics and remove existing destination files
ln -sfv $DOTFILES_DIR/i3wm/config ~/.config/i3/config
mkdir -p ~/.config/i3status && ln -sfv $DOTFILES_DIR/bar/i3status/config ~/.config/i3status/config

ln -sfv $DOTFILES_DIR/X/.Xresources ~/.Xresources
