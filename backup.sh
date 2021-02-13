#!/bin/bash

ov3n="$HOME/.local/git/ov3n/configs"
who="desktop"

# Create folders if needed
mkdir -p $ov3n/$who/.config/vim/plugged/
mkdir -p $ov3n/$who/.local/

# Create list of all packages installed
pacman -Q > $ov3n/$who/package.list

# Arrays of files to be backed up
files=(.xinitrc .profile .zprofile .vim .ssh .mozilla)
conf=(alacritty bspwm feh polybar spotifyd spotify-tui sxhkd synergy zsh aliasrc)
loc=(notes projects scripts)
vimfold=(vimrc)

# Copy files located in ~/
for item in ${files[*]}
do
        cp -rvf ~/$item $ov3n/$who/
done

# Copy files located in ~/.config/
for item in ${conf[*]}
do
        cp -rvf ~/.config/$item $ov3n/$who/.config/
done

# Copy files located in ~/.local/
for item in ${loc[*]}
do
        cp -rvf ~/.local/$item $ov3n/$who/.local/
done

# Copy files located in ~/.config/vim/ but NOT the 'plugged' folder
for item in ${vimfold[*]}
do
        cp -rvf ~/.config/vim/$item $ov3n/$who/.config/vim
done
