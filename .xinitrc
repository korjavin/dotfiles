systemctl --user import-environment DISPLAY XAUTHORITY

if which dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment DISPLAY XAUTHORITY
fi
# /* if [ -d /etc/X11/xinit/xinitrc.d ] ; then */
# /*   for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do */
# /*     [ -x "$f" ] && . "$f" */
# /*   done */
# /*   unset f */
# /* fi */
# /* eval `dbus-launch` */
xrandr --setprovideroutputsource modesetting NVIDIA-0
awesome
