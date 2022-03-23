#!/bin/bash

# cat /sys/class/thermal/thermal_zone0/temp
# sensors | grep CPU | cut -d '+' -f 2 | cut -d '.' -f 1

# function get_cpu_temp(){
#     if ! [ -f /usr/bin/sensors ]; then
#         echo "Sensors not found"
#         echo "To install them please provide"
#         sudo apt install lm-sensors > /dev/null
#     fi
#     out=$(sensors | grep CPU | cut -d '+' -f 2 | cut -d '.' -f 1)
#     if [ "$out" -ge 80 ]; then
#         echo -e "\033[31m $out°C";
#     elif [ "$out" -ge 60 ]; then
#         echo -e "\033[33m $out°C";
#     else
#         echo " $out°C";
#     fi
#     # out=$(($(cat /sys/class/thermal/thermal_zone0/temp)/1000)); if [ $out -ge 80 ]; then echo -e "\033[31m $out°C"; elif [ $out -ge 60 ]; then echo -e "\033[33m $out°C"; else echo " $out°C";fi
#     # out=$(sensors | grep CPU | cut -d '+' -f 2 | cut -d '.' -f 1); if [ $out -ge 80 ]; then echo -e "\033[31m $out°C"; elif [ $out -ge 60 ]; then echo -e "\033[33m $out°C"; else echo " $out°C";fi
# }

if ! [ -f /usr/bin/sensors ]; then echo "Sensors not found"; echo "To install them please provide"; sudo apt install lm-sensors > /dev/null; fi

out=$(sensors | grep CPU | cut -d '+' -f 2 | cut -d '.' -f 1); if [ $out -ge 80 ]; then echo -e "\033[31m $out°C"; elif [ $out -ge 60 ]; then echo -e "\033[33m $out°C"; else echo " $out°C";fi
