#!/bin/bash

if [[ $# < 1 ]]
then
    echo "arg(s): bash|gdb|vim|irssi|tmux "
    exit
fi

BASH=false
GDB=false
VIM=false
IRSSI=false
TMUX=false

for arg in $@
do
    if [[ $arg == "bash" ]]
    then
        BASH=true
    elif [[ $arg == "gdb" ]]
    then
        GDB=true
    elif [[ $arg == "vim" ]]
    then
        VIM=true
    elif [[ $arg == "irssi" ]]
    then
        IRSSI=true
    elif [[ $arg == "tmux" ]]
    then
        TMUX=true
    fi
done

##bash
if [[ $BASH == true ]]
then
    echo "appending bashrc..installing fortune and cowsay.."
    sudo apt-get install fortune-mod cowsay
    cat bash/.bashrc  >>  ~/.bashrc
    echo "map cap lock to escape.."
    cp bash/.remapcaplock ~/
    if [[ -e ~/.bash_profile ]]
    then
        cat bash/.bash_profile  >>  ~/.bash_profile
    elif [[ -e ~/.profile ]]
    then
        cat bash/.bash_profile  >>  ~/.profile
    fi
    cd ; xmodmap ~/.remapcaplock
fi

##gdb
if [[ $GDB == true ]]
then
    echo "gdbinit...installing gdb7.4.."
    sudo apt-get remove gdb
    sudo dpkg -i gdb/gdb_7.4-2012.02-0ubuntu2_amd64.deb
    cp gdb/.gdbinit ~/.gdbinit
fi

##vim
if [[ $VIM == true ]]
then
    echo "vimrc..."
    cp vim/.vimrc ~/.vimrc
fi

##irssi
if [[ $IRSSI == true ]]
then
    echo "irssi..."
    cp -rp irssi/.irssi ~/
fi

#tmux
if [[ $TMUX == true ]]
then
    echo ".tmux.conf..."
    cp tmux/.tmux.conf ~/.tmux.conf
fi
