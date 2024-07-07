#!/bin/bash

# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2024-present AmberELEC (https://github.com/AmberELEC)

CAPACITY_FILE="/sys/class/power_supply/battery/capacity"
CHARGE_FILE="/sys/class/power_supply/battery/status"
while true; do
    sleep 120
    CAP=$(cat $CAPACITY_FILE)
    STAT=$(cat $CHARGE_FILE)
    if [[ $CAP == "0" && $STAT == "Discharging" ]]; then
        systemctl poweroff
    fi
done
