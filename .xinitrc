#xhost +
#metacity &
#ru
#xsetroot -solid gray &
#xterm
#gnome-session --choose-session=simple
#enlightenment
#gnome-terminal
#dwm
systemctl —user import-environment DISPLAY XAUTHORITY

if which dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment DISPLAY XAUTHORITY
fi
awesome
