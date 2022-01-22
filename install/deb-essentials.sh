cat <<EOF > /etc/apt/sources.list
deb http://deb.debian.org/debian bullseye main contrib non-free
deb-src http://deb.debian.org/debian bullseye main contrib non-free

deb http://deb.debian.org/debian-security/ bullseye-security main contrib non-free
deb-src http://deb.debian.org/debian-security/ bullseye-security main contrib non-free

deb http://deb.debian.org/debian bullseye-updates main contrib non-free
deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free
EOF


apt update && \
apt upgrade -y && \
apt install intel-microcode \
 					 man-db \
 					   curl \
 		apt-transport-https \
 					   wget \
 					   xorg \
 					     i3 \
 				   xss-lock \
 				 xbacklight \
 				 lm-sensors \
 				 	pcmanfm \
 				 	   htop \
 				 pulseaudio \
 				pavucontrol \
 					   vlc  \
 					   feh  \
 			network-manager \
 	  network-manager-gnome \
	   				  unzip \
 	  				lxrandr \
 	  				  xclip \
						exa \
  				 	    zsh -y		 	    

# Why microcode is needed refer to https://wiki.debian.org/Microcode


# Brave browser
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list
apt update && apt install brave-browser -y

# Sublime text; add "remember_workspace": false, as a setting
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt-get update && apt-get install sublime-text -y

# Used to setup different external monitor profiles 
apt install python3-pip -y && pip install autorandr

# For the dell to work you might need to install xserver-xorg-video-intel