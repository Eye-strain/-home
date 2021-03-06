#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -al -h --color=auto'
alias youtube='youtube-dl --extract-audio --audio-format mp3'
alias dmesg='dmesg -T'
alias reflector='reflector --verbose --country "United States" -l 200 -p http --sort rate --save /etc/pacman.d/mirrorlist'
alias cp='cp -v'
alias mv='mv -v'

alias sshBSD='ssh -p 55668 98.245.213.97'

alias 1='xrandr --output eDP --brightness 0.1'
alias 2='xrandr --output eDP --brightness 0.2'
alias 3='xrandr --output eDP --brightness 0.3'
alias 4='xrandr --output eDP --brightness 0.4'
alias 5='xrandr --output eDP --brightness 0.5'
alias 6='xrandr --output eDP --brightness 0.6'
alias 7='xrandr --output eDP --brightness 0.7'
alias 8='xrandr --output eDP --brightness 0.8'
alias 9='xrandr --output eDP --brightness 0.9'
alias 10='xrandr --output eDP --brightness 1.0'

#PS1='[\u@\h \W]\$ '
PS1='[\u@\[\e[1;34m\]\h\[\e[m\] \W]\$ '
export EDITOR=nano

#export PS1="\[\e[00;37m\] \w\[\e[0m\]\[\e[01;37m\][\[\e[0m\]\[\e[00;37m\]\\$\[\e[0m\]\[\e[01;37m\]]\[\e[0m\]\[\e[00;37m\]: \[\e[0m\]"
