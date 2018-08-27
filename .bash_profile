#
# ~/.bash_profile
#
export BROWSER=qutebrowser
export EDITOR=/usr/bin/vim
export TERMINAL=urxvt
export PATH=$PATH:/home/glasso/.scripts:/opt/texlive/2018/bin/x86_64-linux
export LC_ALL=pt_BR.UTF-8
export LANG=pt_br.UTF-8
export LC_CTYPE=pt_br.UTF-8

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ "$(tty)" == '/dev/tty1' ]]; then
    # Avoid executing cdm(1) when X11 has already been started.
    [[ -z "$DISPLAY$SSH_TTY$(pgrep xinit)" ]] && exec mdm
fi

