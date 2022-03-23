#!/bin/bash

#ping -c 4 8.8.8.8 | tail -1 | awk '{print $4}'| cut -d '/' -f 2
out=$(ping -c 4 8.8.8.8 | tail -1 | awk '{print $4}'| cut -d '/' -f 2| cut -d '.' -f 1) && if [ "$out" = "" ]; then  echo "Network Down"; else  echo "Ping: $out ms";fi
