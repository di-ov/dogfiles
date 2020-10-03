chsh -s /usr/bin/zsh

cd /etc/zsh && rm -f newuser.zshrc.recommended  zlogin  zlogout  zprofile  zshenv  zshrc

cp /home/di-ov/dogfiles/bootstrap/packages/exa /usr/local/bin
cp /home/di-ov/dogfiles/bootstrap/packages/alacritty /usr/local/bin

# Removes pager in "git diff" command
git config --global pager.diff false