#xautolock -time 10 -locker slock -secure -killer "sudo pm-suspend"
systemctl --user import-environment DISPLAY XAUTHORITY
#
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
#xrandr --setprovideroutputsource modesetting HDMI-1-1
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
#xrandr --output VGA-1 --auto --output HDMI-0 --off
#xrandr --output LVDS-1 --auto --primary
#-right-of VGA-1 --output VGA-1 --auto
#xrandr --output HDMI-1 --mode 3840x2160 --scale 0.6x0.6 --primary  --right-of eDP-1  --output eDP-1 --auto
awesome
#lxterminal
