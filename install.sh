#!/bin/sh

DOTFILES_DIR=~/dogfiles

# Create symlics and remove existing destination files
ln -sfv $DOTFILES_DIR/i3wm/config ~/.config/i3/config	
# ln -sfv $DOTFILES_DIR/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
