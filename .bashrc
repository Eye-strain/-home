#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

xrdb ~/.Xresources &&

alias ls='ls -al -h --color=auto'
alias mocp='mocp -T darkdot_theme'

export PS1="\[\e[00;37m\]\w \[\e[0m\]\[\e[01;37m\][\[\e[0m\]\[\e[00;37m\]\\$\[\e[0m\]\[\e[01;37m\]]\[\e[0m\]\[\e[00;37m\]: \[\e[0m\]"

export EDITOR=nano

#conky &
