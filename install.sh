#!/bin/bash
termux-setup-storage
#配置zsh
if [ $?=0 ] 
then
pkg update
apt install vim zsh git curl wget python python-dev nmap openssh clang
cd ~/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my.zsh/plugins/zsh-syntax-highlighting
chsh -s zsh
source ~/.zshrc

#配置vim
read -p "配置vim? [y/N]?" vi
if [ $vi = y ]
then
cd $HOME
[ $?=0 ] && git clone https://github.com/Guanvi/llvim
[ $?=0 ] && cd llvim
bash install.sh
else
	exit 0
fi
fi

[ $?=0 ] && echo "配置完成" || echo "配置失败"
