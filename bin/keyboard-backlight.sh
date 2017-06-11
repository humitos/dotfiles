#!/bin/bash

# Cron entry as 'root'
#
# $ sudo crontab -e
# * * * * * /home/humitos/bin/keyboard-backlight.sh

# TODO: another possible solution https://github.com/wavexx/acpilight/

AUTOSUSPEND_MS=180000  # 3 minutes
X_IDLE_TIME=`xprintidle`

if [ "$X_IDLE_TIME" -gt "$AUTOSUSPEND_MS" ];
then
    # turn off the keyboard backlight
    echo 0 > /sys/devices/platform/thinkpad_acpi/leds/tpacpi\:\:kbd_backlight/brightness
fi
