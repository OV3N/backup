#!/bin/bash

fold="$HOME/.local/git/peltch/configs/dtop"

# Create folders if needed
mkdir -p $fold/.config/vim/plugged/
mkdir -p $fold/.local/

# Create list of all packages installed
pacman -Q > $fold/package.list

# Arrays of files to be backed up
files=(.xinitrc .profile .zprofile .vim .ssh .mozilla)
conf=(alacritty bspwm feh polybar spotifyd spotify-tui sxhkd synergy zsh aliasrc)
loc=(notes projects scripts)
vimfold=(vimrc)

# Copy files located in ~/
for item in ${files[*]}
do
        cp -rvf ~/$item $fold/
done

# Copy files located in ~/.config/
for item in ${conf[*]}
do
        cp -rvf ~/.config/$item $fold/.config/
done

# Copy files located in ~/.local/
for item in ${loc[*]}
do
        cp -rvf ~/.local/$item $fold/.local/
done

# Copy files located in ~/.config/vim/ but NOT the 'plugged' folder
for item in ${vimfold[*]}
do
        cp -rvf ~/.config/vim/$item $fold/.config/vim
done
