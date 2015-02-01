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

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources &&

## uncomment all three below for fluxbox
#xcompmgr -c &
#fbsetbg /home/eyestrain/.fluxbox/backgrounds/birdie.jpg
#exec fluxbox

#exec enlightenment_start

#exec env GNOME_SHELL_SESSION_MODE=classic gnome-session --session gnome-classic    
#exec gnome-session

sh ~/.fehbg &

exec i3
## if logging (note - caused and issue on 2/1 where kept restarting after login screen):
#exec i3 -V >> ~/.i3/i3log-$(date +'%F-%k-%M-%S') 2>&1
