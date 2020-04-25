chsh -s /usr/bin/zsh

cd /etc/zsh && rm -f newuser.zshrc.recommended  zlogin  zlogout  zprofile  zshenv  zshrc

mv ~/dogfiles/bootstrap/packages/exa /usr/local/bin
dpkg -i ~/dogfiles/bootstrap/packages/Alacritty-v0.4.2-ubuntu_18_04_amd64.deb