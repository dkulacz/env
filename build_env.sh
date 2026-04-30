#!/bin/bash

set -e

sudo apt-get -y update

# python
sudo apt-get -y install python3-pip python3-setuptools python-is-python3

# git
sudo apt-get -y install git git-gui gitk && sudo pip3 install git-review

# zsh
sudo apt-get -y install zsh
git clone https://github.com/robbyrussell/oh-my-zsh
mv oh-my-zsh ~/.oh-my-zsh && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# i3-wm - base
sudo apt-get -y install i3 i3status i3lock-fancy dmenu xsettingsd

# i3-wm - helpers
sudo apt-get -y install rofi autorandr feh eog sct scrot blueman brightnessctl volumeicon-alsa
sudo apt-get -y install tmux fzf bat ncal krusader krename kate kcalc meld

# tools
sudo apt-get -y install picocom tio
sudo apt-get -y install btop htop iotop nmon smartmontools
sudo apt-get -y install nmap iperf can-utils wireshark ethtool net-tools
sudo apt-get -y install openssh-server openssh-sftp-server
sudo apt-get -y install galculator mc dos2unix plantuml
sudo apt-get -y install p7zip p7zip-full unrar
sudo apt-get -y install glogg dlt-viewer
sudo apt-get -y install sshfs exfat-fuse
sudo apt-get -y install qemu-kvm wine

# gcc g++ gdb cmake ninja
sudo apt-get -y install build-essential make gcc-12 g++ gdb cmake ninja-build

# todo: add into .zshrc
#       export QT_QPA_PLATFORMTHEME=gtk3 # fix for krusader icons on i3
#       alias fff="fzf --preview 'batcat --color=always --style=numbers --line-range=:500 {}'"

# todo: docker
# todo: neovim + lazyvim/lazygit/lazydocker + zoxide + ripgrep + harpoon
# todo: hex editor -> https://github.com/WerWolv/ImHex
# todo: picocom with timestamps (tio alternative) -> https://github.com/tdwong/picocom-with-timestamp

# repo tool
# sudo wget https://storage.googleapis.com/git-repo-downloads/repo -O /usr/bin/repo
# sudo chmod 755 /usr/bin/repo

# # 32-bit compat libs for GHS Multi
# sudo dpkg --add-architecture i386
# sudo apt-get -y update
# sudo apt-get -y install libc6:i386 libncurses5:i386
# sudo apt-get -y install libstdc++6:i386 libx11-6:i386 lib32z1
# sudo apt-get -y install libxcursor1:i386

# todo: sudo apt-get -y install exiv2 exiftool
# todo: sudo apt-get -y install wine64-5.0.0 winetricks ttf-mscorefonts-installer

# todo: i3 -> monitor layout change when lid open/close (bind events with autorandr calls)
