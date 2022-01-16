chsh -s /usr/bin/zsh

cd /etc/zsh && rm -f newuser.zshrc.recommended  zlogin  zlogout  zprofile  zshenv  zshrc

cp /home/di-ov/dogfiles/install/packages/alacritty /usr/local/bin

# Removes pager in "git diff" command
git config --global pager.diff false