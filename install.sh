#!/bin/bash
termux-setup-storage
#配置zsh
[ $?=0 ] && (
pkg update
apt install vim zsh git curl wget python python-dev nmap openssh clang
cp -af .oh-my-zsh ~/
cp -af .zshrc ~/
source ~/.zshrc

#配置vim
read -p "配置vim? [y/N]?" vi
if [ $vi = y ]
do
cd $HOME
[ $?=0 ] && git clone https://github.com/Guanvi/llvim
[ $?=0 ] && cd llvim
bash install.sh
else
	exit 0
done
)

[ $?=0 ] && echo "配置完成" || echo "配置失败"
