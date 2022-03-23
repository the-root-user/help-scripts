#!/bin/bash

mem_free () {
    mem_free=$(free -m | grep "Mem" | awk '{print $4+$6}')
    echo "Memory Free: $mem_free MB"
}

mem_usage () {
    mem_used=$(free -m | grep "Mem" | awk '{print $3}')
    echo "Memory Used: $mem_used MB"
}

mem_usage
