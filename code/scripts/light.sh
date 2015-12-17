# ~/code/scripts/light.sh
# changes i3, i3status, Xresources to light theme
#
#!/bin/bash
#

cp ~/.i3/Xresources.light ~/.Xresources &&
xrdb -merge ~/.Xresources &&

cp ~/.i3/i3.conf.light ~/.i3/i3.conf
cp ~/.i3/i3status.conf.light ~/.i3/i3status.conf

PS1='[\u@\h \W]\$ '
