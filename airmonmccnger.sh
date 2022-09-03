#!/bin/bash

echo "Your (MAC-Address) is being chanaged to a random address"

sleep 2

echo "In a MINUTE......"

sudo macchanger -r lo

sleep0 1

sudo macchanger -r enp1s0

sleep 1

sudo macchanger -r wlxd8fee31d7d59

sleep 1

echo "Do you wanna start monitor mode? (y/n)"

read mode

if [[ $mode == "y" ]]; then
        sudo airmon-ng start wlxd8fee31d7d59
        sleep 2
        sudo airodump-ng wlan0mon
else
        echo "No Prob";
fi
