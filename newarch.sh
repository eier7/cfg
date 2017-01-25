#!/bin/bash

sudo pacman -Syy
sudo pacman --noconfirm base-devel fakeroot

wget https://aur.archlinux.org/packages/pa/package-query-git/package-query-git.tar.gz
tar -xvf package-query-git.tar.gz
cd package-query-git
makepkg -s -f
sudo pacman -U --noconfirm package-query-git-*-*.pkg.tar.xz
cd ..

wget https://aur.archlinux.org/packages/ya/yaourt-git/yaourt-git.tar.gz
tar -xvf yaourt-git.tar.gz
cd yaourt-git
makepkg -s -f
sudo pacman -U --noconfirm yaourt-git-*-*.pkg.tar.xz
cd ..

sudo yaourt -Syy --noconfirm
sudo yaourt -S tmux python-pyserial python-raspberry-gpio --noconfirm
sudo cp vimrc /etc/vim/vimrc

