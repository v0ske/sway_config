#!/bin/bash

if ! [ $(id -u) = 0 ]; then
   echo "The script need to be run as root." >&2
   exit 1
fi

ln -s /home/laurent08/sway/sway /home/laurent08/.config/sway
ln -s /home/laurent08/swayswaync /home/laurent08/.config/swaync
ln -s /home/laurent08/sway/waybar /home/laurent08/.config/waybar
ln -s /home/laurent08/sway/config.d /etc/sway/config.d
