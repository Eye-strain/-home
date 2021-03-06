#!/bin/bash

# Dependencies:
# imagemagick
# i3lock-color-git
# scrot
#
# triggered by ~/.i3/config
#

IMAGE=~/.i3/i3lock.png

# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args

#BLURTYPE="0x5" # 7.52s
#BLURTYPE="0x2" # 4.39s
#BLURTYPE="5x3" # 3.80s
#BLURTYPE="2x8" # 2.90s
BLURTYPE="2x3" # 2.92s

scrot $IMAGE

convert $IMAGE -level 0%,100%,0.6 -blur $BLURTYPE -pointsize 26 -fill white -gravity center -annotate +0+200 'Type password to unlock' - | composite -gravity center ~/.i3/lock.png - $IMAGE
i3lock -i $IMAGE

rm $IMAGE
