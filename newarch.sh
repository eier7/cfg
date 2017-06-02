#!/bin/bash

sudo pacman -Syy
sudo pacman -S base-devel fakeroot wget vim --noconfirm

wget https://aur.archlinux.org/cgit/aur.git/snapshot/package-query-git.tar.gz
tar -xvf package-query-git.tar.gz
cd package-query-git
makepkg -s -f
sudo pacman -U --noconfirm package-query-git-*-*.pkg.tar.xz
cd ..

wget https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt-git.tar.gz
tar -xvf yaourt-git.tar.gz
cd yaourt-git
makepkg -s -f
sudo pacman -U --noconfirm yaourt-git-*-*.pkg.tar.xz
cd ..

yaourt -Syy --noconfirm
yaourt -S tmux python-pyserial python-raspberry-gpio --noconfirm
sudo cp vimrc /etc/vim/vimrc

