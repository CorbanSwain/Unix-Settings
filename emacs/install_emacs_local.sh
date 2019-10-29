#!/bin/bash
# install_emacs_local.sh
# Corban Swain, 2019

# small script to download and install emacs locally

cd ~
mkdir downloads
cd downloads
wget https://ftp.gnu.org/pub/gnu/emacs/emacs-26.3.tar.gz
tar -zxvf emacs-26.3.tar.gz
cd emacs-26.3
./configure --prefix=$HOME/emacs --bindir=$HOME/bin
make 
make install
