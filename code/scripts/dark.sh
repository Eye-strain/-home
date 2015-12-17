# ~/code/scripts/dark.sh
# changes i3, i3status, Xresources to dark theme
#
#!/bin/bash
#

cp ~/.i3/Xresources.dark ~/.Xresources &&
xrdb -merge ~/.Xresources &&

cp ~/.i3/i3.conf.dark ~/.i3/i3.conf
cp ~/.i3/i3status.conf.dark ~/.i3/i3status.conf

PS1='[\u@\h \W]\$ '
