#!/bin/bash

if [[ $# < 1 ]]
then
    echo "arg(s): all or [bash|gdb|vim|irssi] "
    exit
fi

CWD=$(pwd)
ALL=false
BASH=false
GDB=false
VIM=false
IRSSI=false

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
    elif [[ $arg == "all" ]]
    then
        BASH=true
        GDB=true
        VIM=true
        IRSSI=true
    fi
done

##bash
if [[ $BASH == true ]]
then
    echo "appending bashrc..installing fortune and cowsay.."
    sudo apt-get install fortune-mod cowsay
    cat bash/.bashrc  >>  ~/.bashrc
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
    #pathogen https://github.com/tpope/vim-pathogen
    echo "vim pathogen"...
    mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    #vim-surround https://github.com/tpope/vim-surround
    echo "vim surround..."
    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-surround.git
    cd $CWD
fi

##irssi
if [[ $IRSSI == true ]]
then
    echo "irssi..."
    cp -rp irssi/.irssi ~/
fi
