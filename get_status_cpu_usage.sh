#!/bin/bash

cpu_usage () {
    cpu_idle=$(top -b -n 1 | grep Cpu | awk '{print $8}'|cut -f 1 -d ".")
    cpu_use=$(expr 100 - $cpu_idle)
    echo "CPU Utilization: $cpu_use%"
}

cpu_usage_by_current_user () {
    cpu_use=$(top -b -n 1 | grep Cpu | awk '{print $2}'|cut -f 1 -d ".")
    echo "CPU Utilized: $cpu_use%"
}

cpu_usage