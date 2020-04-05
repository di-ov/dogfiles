cat <<EOF > /etc/apt/sources.list
deb http://deb.debian.org/debian buster main contrib non-free
deb-src http://deb.debian.org/debian buster main contrib non-free
deb http://deb.debian.org/debian-security/ busterupdates main contrib non-free
deb-src http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb http://deb.debian.org/debian buster-updates main contrib non-free
deb-src http://deb.debian.org/debian buster-updates main contrib non-free
EOF

apt update && \
apt upgrade -y && \
apt install intel-microcode \
 					 man-db \
 					   curl \
 					   wget \
 					   xorg \
 					     i3 \
 				   xss-lock \
 				 xbacklight \
 				 lm-sensors \
 				 	pcmanfm \
 				 	   htop \
 				 	  micro \
 				 	    zsh -y

# Why microcode is needed refer to https://wiki.debian.org/Microcode