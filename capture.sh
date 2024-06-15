#!/bin/bash

# GRUB
[[ ! -f /etc/default/grub ]] || cp /etc/default/grub ./elsewhere/grub/
[[ ! -f /etc/grub.d/40_custom ]] || cp /etc/grub.d/40_custom ./elsewhere/grub/

# SYSTEMD-TIMESYNCD
[[ -f /etc/systemd/timesyncd.conf ]] || cp /etc/systemd/timesyncd.conf ./elsewhere/

# POLYBAR
[[ ! -d $HOME/.config/polybar ]] || cp -r $HOME/.config/polybar ./.config/

# PICOM
[[ ! -f $HOME/.config/picom.conf ]] || cp $HOME/.config/picom.conf ./.config/

# i3
[[ ! -f $HOME/.config/i3/config ]] || cp $HOME/.config/i3/config ./.config/i3/

# KONSOLE
[[ ! -f $HOME/.local/share/konsole/Profile\ 1.profile ]] || cp $HOME/.local/share/konsole/Profile\ 1.profile ./.local/share/konsole/
[[ ! -f $HOME/.local/share/konsole/Sweet.colorscheme ]] || cp $HOME/.local/share/konsole/Sweet.colorscheme ./.local/share/konsole/

# i3-wpd WALLPAPERS
[[ ! -d $HOME/Downloads/Pkgs/i3-wpd/unsplash ]] || cp -r $HOME/Downloads/Pkgs/i3-wpd/unsplash ./

# OREO-SPARK-BLUE CURSORS
[[ ! -d $HOME/.icons ]] || cp -r $HOME/.icons/oreo_spark_blue_cursors ./.icons/




# XINITRC
[[ ! -f $HOME/.xinitrc ]] || cp $HOME/.xinitrc ./

# ZSH
[[ ! -f $HOME/.zshrc ]] || cp $HOME/.zshrc ./
[[ ! -f $HOME/.zshrc.comp ]] || cp $HOME/.zshrc.comp ./

# P10K
[[ ! -f $HOME/.p10k.ascii.zsh ]] || cp $HOME/.p10k.ascii.zsh ./
[[ ! -f $HOME/.p10k.uni.zsh ]] || cp $HOME/.p10k.uni.zsh ./
[[ ! -f $HOME/.p10k.vscode.zsh ]] || cp $HOME/.p10k.vscode.zsh ./

# BASH
[[ ! -f $HOME/.bashrc ]] || cp $HOME/.bashrc ./

# VIM
[[ ! -f $HOME/.vimrc ]] || cp $HOME/.vimrc ./
[[ ! -d $HOME/.vim/colors ]]   || cp -r $HOME/.vim/colors ./.vim/

# DMENU
[[ ! -d $HOME/Downloads/Pkgs/dmenu-5.2 ]] || cp -r $HOME/Downloads/Pkgs/dmenu-5.2 ./

# PACKAGE LISTS
pacman -Qqe > ./packages_x86_64
pacman -Qqm > ./aur_packages
