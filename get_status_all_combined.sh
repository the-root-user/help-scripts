#!/bin/bash

# out_ping=$(ping -c 4 8.8.8.8 | tail -1 | awk '{print $4}'| cut -d '/' -f 2| cut -d '.' -f 1) && if [ "$out_ping" = "" ]; then  echo "Network Down"; else  echo "Ping: $out_ping ms";fi

# cpu_idle=$(top -b -n 1 | grep Cpu | awk '{print $8}'|cut -f 1 -d ".")
# cpu_use=$(expr 100 - $cpu_idle)
# echo "CPU Utilization: $cpu_use

# cpu_use=$(top -b -n 1 | grep Cpu | awk '{print $2}'|cut -f 1 -d ".")
# echo "CPU: $cpu_use%"

# mem_used=$(free -m | grep "Mem" | awk '{print $3}')
# echo "Memory: $mem_used MB"

# out=$(sensors | grep CPU | cut -d '+' -f 2 | cut -d '.' -f 1); if [ $out -ge 80 ]; then echo -e "\033[31m $out°C"; elif [ $out -ge 60 ]; then echo -e "\033[33m $out°C"; else echo " $out°C";fi


# with cpu_used
out_ping=$(ping -c 4 8.8.8.8 | tail -1 | awk '{print $4}'| cut -d '/' -f 2| cut -d '.' -f 1) && if [ "$out_ping" = "" ]; then  echo -n "Network Down   "; else  echo -n "Ping: $out_ping ms  ";fi; cpu_idle=$(top -b -n 1 | grep Cpu | awk '{print $8}'|cut -f 1 -d "."); cpu_use=$(expr 100 - $cpu_idle); echo -n "CPU: $cpu_use%   "; mem_used=$(free -m | grep "Mem" | awk '{print $3}'); echo -n "Memory: $mem_used MB   "; out=$(sensors | grep CPU | cut -d '+' -f 2 | cut -d '.' -f 1); if [ $out -ge 80 ]; then echo -e "\033[31m $out°C"; elif [ $out -ge 60 ]; then echo -e "\033[33m $out°C"; else echo " $out°C";fi

# Colors removed and space increased for panel
# out_ping=$(ping -c 4 8.8.8.8 | tail -1 | awk '{print $4}'| cut -d '/' -f 2| cut -d '.' -f 1) && if [ "$out_ping" = "" ]; then  echo -n "Network Down     "; else  echo -n "Ping: $out_ping ms     ";fi; cpu_idle=$(top -b -n 1 | grep Cpu | awk '{print $8}'|cut -f 1 -d "."); cpu_use=$(expr 100 - $cpu_idle); echo -n "CPU: $cpu_use%     "; mem_used=$(free -m | grep "Mem" | awk '{print $3}'); echo -n "Memory: $mem_used MB     "; out=$(sensors | grep CPU | cut -d '+' -f 2 | cut -d '.' -f 1); if [ $out -ge 80 ]; then echo " $out°C  "; elif [ $out -ge 60 ]; then echo " $out°C  "; else echo " $out°C  ";fi

# with cpu_used_by_current_user
# out_ping=$(ping -c 4 8.8.8.8 | tail -1 | awk '{print $4}'| cut -d '/' -f 2| cut -d '.' -f 1) && if [ "$out_ping" = "" ]; then  echo -n "Network Down  "; else  echo -n "Ping: $out_ping ms  ";fi; cpu_use=$(top -b -n 1 | grep Cpu | awk '{print $2}'|cut -f 1 -d "."); echo -n "CPU: $cpu_use%  "; mem_used=$(free -m | grep "Mem" | awk '{print $3}'); echo -n "Memory: $mem_used MB  "; out=$(sensors | grep CPU | cut -d '+' -f 2 | cut -d '.' -f 1); if [ $out -ge 80 ]; then echo -e "\033[31m $out°C"; elif [ $out -ge 60 ]; then echo -e "\033[33m $out°C"; else echo " $out°C";fi