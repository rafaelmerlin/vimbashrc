#!/bin/bash
# Gentil de Bortoli Junior <gentiljunior@bortoli.com.br>
# Data: 14/02/2003

#export LANG=pt_BR.ISO8859-1
#export LC_ALL=pt_BR.ISO8859-1
#export LANGUAGE=pt_BR.ISO8859-1
#export LOCAL=pt_BR.ISO8859-1
#export MM_CHARSET=pt_BR.ISO8859-1

# Freedows Consortium


export SHELL=`which bash`
export VISUAL=`which vim`
export EDITOR=`which vim`
export INPUTRC=${HOME}/.inputrc
export HISTFILESIZE=10000
export HISTSIZE=5000
export LS_OPTIONS="--color=auto"

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias xt="export TERM=xterm"
alias vt="export TERM=vt100"
alias lx="export TERM=linux"
alias cs="export TERM=cons25"
alias dt="export TERM=dtterm"

alias vi="vim"

eval `dircolors`
alias ls="ls ${LS_OPTIONS}"
alias l="clear ; ls -la"

umask 022

#---Colorify Bash---#

function ColorPrompt {
    case $TERM in
        xterm*|rxvt*)
            local TITLEBAR='\[\033]0;\u@\h:\w\007\]'
            ;;
        *)
            local TITLEBAR=''
            ;;
    esac

    local NOCOLOR
    local GRAY
    local GRAY_ST
    local RED
    local RED_ST
    local GREEN
    local GREEN_ST
    local YELLOW
    local YELLOW_ST
    local BLUE
    local BLUE_ST
    local MAGENTA
    local MAGENTA_ST
    local CYAN
    local CYAN_ST
    local WHITE
    local WHITE_ST

    local C_USER
    local CHToken
    local STRTTY
    
    NOCOLOR="\[\033[0m\]"
    GRAY="\[\033[30m\]"
    GRAY_ST="\[\033[30;1m\]"
    RED="\[\033[31m\]"
    RED_ST="\[\033[31;1m\]"
    GREEN="\[\033[32m\]"
    GREEN_ST="\[\033[32;1m\]"
    YELLOW="\[\033[33m\]"
    YELLOW_ST="\[\033[33;1m\]"
    BLUE="\[\033[34m\]"
    BLUE_ST="\[\033[34;1m\]"
    MAGENTA="\[\033[35m\]"
    MAGENTA_ST="\[\033[35;1m\]"
    CYAN="\[\033[36m\]"
    CYAN_ST="\[\033[36;1m\]"
    WHITE="\[\033[37m\]"
    WHITE_ST="\[\033[37;1m\]"

    if [ "$UID" = "0" ]; then 
        C_USER=${RED_ST}
        CHToken='#'
    else
        #C_USER=${GREEN_ST}    
        C_USER=${WHITE_ST}    
        CHToken='$'
    fi
    
PS1="${TITLEBAR}\
${WHITE_ST}[\
${C_USER}\u\
${WHITE_ST}@\
${GREEN_ST}\h\
${WHITE_ST}:\
${CYAN_ST}\w\
${WHITE_ST}]\
${C_USER}${CHToken}\
${NOCOLOR} "

    export PS1
}

#if [ -f ~/ZZ/funcoeszz ]; then
#    . ~/ZZ/funcoeszz
#else
#    echo "Não achei as Funções ZZ! Baixando..."
#    mkdir ~/ZZ && cd ~/ZZ && wget www.aurelio.net/zz/funcoeszz
#fi

ColorPrompt
