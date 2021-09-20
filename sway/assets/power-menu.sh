#!/bin/sh

LOCK=""
SLEEP=""
LOGOUT=""
RESTART=""
SHUTDOWN=""

list_icons() {
    echo $LOCK
    echo $SLEEP
    echo $LOGOUT
    echo $RESTART
    echo $SHUTDOWN
}

handle_option() {
    case "$1" in
        "$LOCK")
          /home/laurent08/.config/assets/lock.sh
            ;;
        "$SLEEP")
          systemctl suspend
            ;;
        "$LOGOUT")
          swaymsg exit
            ;;
        "$RESTART")
          reboot
            ;;
        "$SHUTDOWN")
          shutdown now
            ;;
    esac
}

SELECTION="$(list_icons | rofi -dmenu -theme options_menu)"
handle_option $SELECTION &
