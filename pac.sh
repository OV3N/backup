#!/bin/bash

sudo pacman -S --noconfirm zsh git bspwm alacritty vim openssh mosh sxhkd feh firefox cronie dmenu wireguard-tools make gcc pycharm-community-edition fakeroot gzip python razergenie fontconfig gzip unzip tar gsfonts gnu-free-fonts cantarell-fonts bzip2 bdf-unifont pulseaudio qemu libvirt ovmf virt-manager ebtables iptables dnsmasq xf86-video-intel zsh-syntax-highlighting xorg-server xorg-xinit compton

mkdir $HOME/.local/git -p 2>/dev/null

git clone https://aur.archlinux.org/yay.git $HOME/.local/git/yay
cd $HOME/.local/git/yay
makepkg -si

cd $HOME

yay -S nordvpn-bin polybar plex-media-player termius spotifyd spotify-tui ttf-iosevka ttf-ms-fonts ttf-unifont pacmixer
