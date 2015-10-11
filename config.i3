
# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!
#
# This config file uses keycodes (bindsym) and was written for the QWERTY
# layout.
#
# To get a config file with the same key positions, but for your current
# layout, use the i3-config-wizard
#

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).

font pango:terminus 11

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# launch i3lock

exec xautolock -time 10 -locker '~/.i3/i3lock.sh'

# use these keys for focus, movement, and resize directions when reaching for
# the arrows is not convenient
set $up l
set $down k
set $left j
set $right semicolon

# use Mouse+Mod1 to drag floating windows to their wanted position
floating_modifier Mod1

# focus does not follow mouse
focus_follows_mouse no

# start a terminal
bindsym Mod1+Return exec i3-sensible-terminal

# kill focused window
bindsym Mod1+Shift+q kill

# start dmenu (a program launcher)
bindsym Mod1+d exec dmenu_run

# manually lock screen
bindsym Control+Mod1+l exec i3lock

# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym Mod1+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym Mod1+$left focus left
bindsym Mod1+$down focus down
bindsym Mod1+$up focus up
bindsym Mod1+$right focus right

# alternatively, you can use the cursor keys:
bindsym Mod1+Left focus left
bindsym Mod1+Down focus down
bindsym Mod1+Up focus up
bindsym Mod1+Right focus right

# move focused window
bindsym Mod1+Shift+$left move left
bindsym Mod1+Shift+$down move down
bindsym Mod1+Shift+$up move up
bindsym Mod1+Shift+$right move right

# alternatively, you can use the cursor keys:
bindsym Mod1+Shift+Left move left
bindsym Mod1+Shift+Down move down
bindsym Mod1+Shift+Up move up
bindsym Mod1+Shift+Right move right

# split in horizontal orientation
bindsym Mod1+h split h

# split in vertical orientation
bindsym Mod1+v split v

# enter fullscreen mode for the focused container
bindsym Mod1+f fullscreen

# change container layout (stacked, tabbed, toggle split)
bindsym Mod1+s layout stacking
bindsym Mod1+w layout tabbed
bindsym Mod1+e layout toggle split

# toggle tiling / floating
bindsym Mod1+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym Mod1+space focus mode_toggle

# focus the parent container
bindsym Mod1+a focus parent

# focus the child container
#bindsym Mod1+d focus child

# move the currently focused window to the scratchpad
bindsym Mod1+Shift+minus move scratchpad

# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command cycles through them.
bindsym Mod1+minus scratchpad show

# assign workspace variables
set $WS1 
set $WS2 
#set $WS1 URxvt
#set $WS2 Chromium
set $WS3 Sublime
set $WS4 LibreOffice
#set $WS5 5
set $WS5 
set $WS6 6
set $WS7 7
set $WS8 8
set $WS9 9
set $WS10 10

# switch to workspace
bindsym mod1+1 workspace $WS1
bindsym mod1+2 workspace $WS2
bindsym mod1+3 workspace $WS3
bindsym mod1+4 workspace $WS4
bindsym mod1+5 workspace $WS5
bindsym mod1+6 workspace $WS6
bindsym mod1+7 workspace $WS7
bindsym mod1+8 workspace $WS8
bindsym mod1+9 workspace $WS9
bindsym mod1+0 workspace $WS10

# move focused container to workspace
bindsym mod1+Shift+1 move container to workspace $WS1
bindsym mod1+Shift+2 move container to workspace $WS2
bindsym mod1+Shift+3 move container to workspace $WS3
bindsym mod1+Shift+4 move container to workspace $WS4
bindsym mod1+Shift+5 move container to workspace $WS5
bindsym mod1+Shift+6 move container to workspace $WS6
bindsym mod1+Shift+7 move container to workspace $WS7
bindsym mod1+Shift+8 move container to workspace $WS8
bindsym mod1+Shift+9 move container to workspace $WS9
bindsym mod1+Shift+0 move container to workspace $WS10

## float

for_window [class="URxvt"] floating enable,move absolute center
#for_window [class="Chromium"] floating enable,move absolute center

#floating enable
for_window [title="File Operation Progress" class="Thunar"] floating enable
for_window [window_role="pop-up"] floating enable,move absolute center

#assign [instance="URxvt"] $WS1
assign [class="Chromium"] $WS2
assign [class="sublime"] $WS3

# reload the configuration file
bindsym Mod1+Shift+c reload

# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym Mod1+Shift+r restart

# exit i3 (logs you out of your X session)
bindsym Mod1+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        bindsym $left       resize shrink width 10 px or 10 ppt
        bindsym $down       resize grow height 10 px or 10 ppt
        bindsym $up         resize shrink height 10 px or 10 ppt
        bindsym $right      resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left        resize shrink width 10 px or 10 ppt
        bindsym Down        resize grow height 10 px or 10 ppt
        bindsym Up          resize shrink height 10 px or 10 ppt
        bindsym Right       resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym Mod1+r mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {

strip_workspace_numbers yes

colors {

	background #282828
	statusline #ebdbb2
	separator  #918273

#		           border  middle  text

	focused_workspace  #ebdbb2 #458588 #ebdbb2
	inactive_workspace #282828 #282828 #918273
#	active_workspace   #333333 #918273 #F4A460
#	urgent_workspace   #2f343a #900000 #ffffff

}
        status_command i3status
}

##
##
## MY ADDS BELOW
##
##

# $mod+i loads chromium

bindsym Mod1+i exec chromium --incognito
bindsym Mod1+z exec atom

## for all windows
for_window [class="^.*"] border pixel 2
#for_window [class="URxvt"] border pixel 2

## URxvt always floats
for_window [class="URxvt"] floating enable
#for_window [class="Chromium"] floating enable

# colors

set $gray1 #918273
set $white #FFFFFF

set $bg	#282828
set $fg #ebdbb2
set $hi #efef8f
set $ac #494949
#set $ac #a0afa0
set $tx #040404
set $ia #8f8f8f
set $be #8faf9f
set $yw #ccdc90
set $gn #88b090
set $rd #e89393
set $id #606060
#set $id #5E83F2
set $ce $ceecee

#		        border	background	text	indicator

client.focused		$gray1	$gray1		$tx	$bg
client.unfocused	$bg	$bg		$ia	$id
client.focused_inactive	$bg	$bg		$ac	$id
client.urgent		$rd	$rd		$tx	$id


#######################################################################
# automatically start i3-config-wizard to offer the user to create a
# keysym-based config which used his favorite modifier (alt or windows)
#
# i3-config-wizard will not launch if there already is a config file
# in ~/.i3/config.
#
# Please remove the following exec line:
#######################################################################
#exec i3-config-wizard
