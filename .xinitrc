#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xcompmgr -c &

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources &&

fbsetbg /home/eyestrain/.fluxbox/backgrounds/grass.jpg

exec fluxbox
