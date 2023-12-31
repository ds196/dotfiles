#!/bin/bash

# GRUB
[[ ! -f /etc/default/grub ]] || cp /etc/default/grub ./elsewhere/grub/
[[ ! -f /etc/grub.d/40_custom ]] || cp /etc/grub.d/40_custom ./elsewhere/grub/

# SYSTEMD-TIMESYNCD
[[ -f /etc/systemd/timesyncd.conf ]] || cp /etc/systemd/timesyncd.conf ./elsewhere/

# POLYBAR
[[ ! -f $HOME/.config/polybar/config.ini ]] || cp $HOME/.config/polybar/config.ini ./.config/polybar/
[[ ! -f $HOME/.config/polybar/launch.sh ]] || cp $HOME/.config/polybar/launch.sh ./.config/polybar/

# PICOM
[[ ! -f $HOME/.config/picom.conf ]] || cp $HOME/.config/picom.conf ./.config/

# i3
[[ ! -f $HOME/.config/i3/config ]] || cp $HOME/.config/i3/config ./.config/i3/

# XINITRC
[[ ! -f $HOME/.xinitrc ]] || cp $HOME/.xinitrc ./

# ZSH
[[ ! -f $HOME/.zshrc ]] || cp $HOME/.zshrc ./

# BASH
[[ ! -f $HOME/.bashrc ]] || cp $HOME/.bashrc ./

# VIM
[[ ! -f $HOME/.vimrc ]] || cp $HOME/.vimrc ./
[[ ! -d $HOME/.vim/colors ]]   || cp -r $HOME/.vim/colors ./.vim/

# DMENU
[[ ! -d $HOME/Downloads/Pkgs/dmenu-5.2 ]] || cp -r $HOME/Downloads/Pkgs/dmenu-5.2 ./
