cat <<EOF > /etc/apt/sources.list
deb http://deb.debian.org/debian buster main contrib non-free
deb-src http://deb.debian.org/debian buster main contrib non-free

deb http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb-src http://deb.debian.org/debian-security/ buster/updates main contrib non-free

deb http://deb.debian.org/debian buster-updates main contrib non-free
deb-src http://deb.debian.org/debian buster-updates main contrib non-free
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
  				 	    zsh -y		 	    

# Why microcode is needed refer to https://wiki.debian.org/Microcode


# Brave browser
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list
apt update && apt install brave-browser -y

# Used to setup different external monitor profiles 
apt install python-pip -y && pip install autorandr

curl https://getmic.ro | bash && mv micro /usr/local/bin

# TODO: fetch nnn binary

# 
# For the dell to work you might need to install xserver-xorg-video-intel