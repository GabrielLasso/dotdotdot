#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# >>> Added by cnchi installer

# Mapa de Teclado
setxkbmap -model abnt2 -layout br -variant abnt2

