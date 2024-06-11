#!/bin/bash

echo 1 > /sys/class/leds/left_joystick/brightness
echo 1 > /sys/class/leds/right_joystick/brightness
echo 1 > /sys/class/leds/right_below/brightness
echo 1 > /sys/class/leds/left_below/brightness

end=$((SECONDS+10))

while [ $SECONDS -lt $end ]; do
    echo 0 > /sys/class/leds/left_joystick/brightness
    sleep 0.3
    echo 1 > /sys/class/leds/left_joystick/brightness
    echo 0 > /sys/class/leds/left_below/brightness
    sleep 0.3
    echo 1 > /sys/class/leds/left_below/brightness
    echo 0 > /sys/class/leds/right_below/brightness
    sleep 0.3
    echo 1 > /sys/class/leds/right_below/brightness
    echo 0 > /sys/class/leds/right_joystick/brightness
    sleep 0.3
    echo 1 > /sys/class/leds/right_joystick/brightness
done