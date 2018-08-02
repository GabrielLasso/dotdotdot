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

export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/vim
export TERMINAL=terminator
export PATH=$PATH:/home/glasso/.scripts:/opt/texlive/2018/bin/x86_64-linux
export LC_ALL=pt_BR.UTF-8
export LANG=pt_br.UTF-8
export LC_CTYPE=pt_br.UTF-8

