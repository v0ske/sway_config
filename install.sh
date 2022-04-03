#!/bin/bash

if ! [ $(id -u) = 0 ]; then
   echo "The script need to be run as root." >&2
   exit 1
fi

ln -sfr /home/laurent08/sway/sway /home/laurent08/.config/sway
ln -sfr /home/laurent08/sway/swaync /home/laurent08/.config/swaync
ln -sf /home/laurent08/sway/waybar /home/laurent08/.config/waybar
ln -sf /home/laurent08/sway/config.d/* /etc/sway/config.d
