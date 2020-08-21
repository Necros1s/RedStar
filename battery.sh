#!/usr/local/bin/bash

battery_percent=$(acpiconf -i 0 | grep -i "Remaining capacity:" | awk -F " " '{print $3}' | sed 's/%//g')
tstate=$(acpiconf -i 0 | grep -i "State:" | awk -F " " '{print $2}')
remaining_time=$(acpiconf -i 0 | grep -i "Remaining time:" | awk -F " " '{print $3}')

#echo $battery_percent
#echo $state
#echo $remaining_time

if [ $tstate == "charging" ]; then
   state="?"
else
    state=""
fi

if [ "$battery_percent" -gt 97 ]; then
    icon=""
elif [ "$battery_percent" -gt 85 ]; then
    icon=""
elif [ "$battery_percent" -gt 60 ]; then
    icon=""
elif [ "$battery_percent" -gt 35 ]; then
    icon=""
elif [ "$battery_percent" -gt 10 ]; then
    icon=""
else
    icon=""
fi

if [ "$remaining_time" == "unknown" ]; then
   echo "${icon}${state} ${battery_percent}%"
else
   echo "${icon}${state} ${battery_percent}% ? ${remaining_time}"
fi
