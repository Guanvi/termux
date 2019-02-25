#!/bin/bash
cd $HOME
pkg update
apt install vim zsh git curl wget python python-dev nmap openssh clang


git clone https://github.com/Guanvi/llvim
cd llvim&&bash install.sh

git clone https://github.com/robbyrussell/oh-my-zsh.git






echo ""
