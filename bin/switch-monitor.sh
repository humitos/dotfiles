
CURRENT_MONITOR=`xrandr | grep 1920x1080+0+0 | awk '{ print $1 }'`

if [ $CURRENT_MONITOR = "HDMI-1" ]
then
    # switch to NOTEBOOK monitor
    xrandr --output HDMI-1 --off --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal
else
    # switch to EXTERNAL (LG) monitor
    xrandr --output eDP-1 --off --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal
fi
