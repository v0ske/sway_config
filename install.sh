#!/bin/bash

if ! [ $(id -u) = 0 ]; then
   echo "The script need to be run as root." >&2
   exit 1
fi

ln -s sway /home/laurent08/.config/sway
ln -s swaync /home/laurent08/.config/swaync
ln -s waybar /home/laurent08/.config/waybar
ln -s config.d /etc/sway/config.d
