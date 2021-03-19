#!/bin/bash
#export XDG_RUNTIME_DIR="/run/user/1002"

battery=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage")
state=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state")
battery=${battery:${#baterry}-3:2}

# Usar esto para testear un determinado nivel:
battery=00

echo $battery% de batería disponible.
#play -q -n synth 0.1 sin 500 || echo -e

if [ $battery -eq 00 ]; then play /usr/share/sounds/gnome/default/alerts/complete.oga; exit; fi

#if [ $battery -gt 50]; then mplayer -really-quiet "$1" -volume 100; fi
#if [ $battery -eq 50 ]; then  mplayer -really-quiet "$1" -volume 100;fi

if [ "${state: -11}" = 'discharging' ]; then 
	if [ $battery -le 40 ]; then  echo "poca batería."; play -q -n synth 0.05 sin 500 || echo -e "\a"; fi
	if [ $battery -le 35 ]; then  echo "poca batería."; play -q -n synth 0.05 sin 500 || echo -e "\a"; fi
	if [ $battery -le 30 ]; then  echo "poca batería."; play -q -n synth 0.05 sin 500 || echo -e "\a"; fi
	if [ $battery -le 25 ]; then  echo "poca batería."; play -q -n synth 0.05 sin 500 || echo -e "\a"; fi
	if [ $battery -le 20 ]; then  echo "poca batería."; play -q -n synth 0.05 sin 500 || echo -e "\a"; fi
	if [ $battery -le 15 ]; then  echo "poca batería."; play -q -n synth 0.5 sin 500 || echo -e "\a"; fi
	if [ $battery -le 10 ]; then  echo "poca batería."; play -q -n synth 1 sin 500 || echo -e "\a"; fi
	#if [ $battery -le 7 ]; then  echo "poca batería."; play -q -n synth 1 sin 1000 || echo -e "\a"; fi
	#if [ $battery -le 5 ]; then  echo "poca batería."; play -q -n synth 1 sin 1100 || echo -e "\a"; fi
	if [ $battery -le 3 ]; then  poweroff; fi
fi
