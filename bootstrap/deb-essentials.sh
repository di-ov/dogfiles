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
 					   cmus \
 					   feh  \
 				 	    zsh -y		 	    

# Why microcode is needed refer to https://wiki.debian.org/Microcode


# Brave browser
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list
apt install brave-browser -y