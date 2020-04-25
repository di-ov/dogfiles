DOTFILES_DIR=~/dogfiles

ln -sfv $DOTFILES_DIR/looks/.Xresources ~/.Xresources
ln -sfv $DOTFILES_DIR/looks/gtk2.0/.gtkrc-2.0 ~/.gtkrc-2.0
ln -sfv $DOTFILES_DIR/looks/gtk-3.0/.settings.ini ~/.config/gtk-3.0/.settings.ini

ln -sfv $DOTFILES_DIR/looks/.wallpaper.jpg ~/.wallpaper.jpg

mkdir -pv ~/.fonts && cp -rfv $DOTFILES_DIR/looks/fonts/* ~/.fonts/
mkdir -pv ~/.themes && cp -rfv $DOTFILES_DIR/looks/themes/* ~/.themes/
mkdir -pv ~/.icons && cp -rfv $DOTFILES_DIR/looks/icons/* ~/.icons/

# Reset font cache
fc-cache -fv