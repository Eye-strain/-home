#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -al -h --color=auto'
alias uzbl='uzbl-tabbed'
alias youtube='youtube-dl --extract-audio --audio-format mp3'

PS1='[\u@\h \W]\$ '

export EDITOR=nano

export PS1="\[\e[00;37m\]\w \[\e[0m\]\[\e[01;37m\][\[\e[0m\]\[\e[00;37m\]\\$\[\e[0m\]\[\e[01;37m\]]\[\e[0m\]\[\e[00;37m\]: \[\e[0m\]"
