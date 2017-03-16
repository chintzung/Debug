#!/bin/bash
echo " Time          UID       PID    %usr %system  %guest    %CPU   CPU  Command"
while true; do
	pidstat -l -p ALL 1 1 | grep -v Average | awk -F " " '{if ($8 >= 5) {print $0}}'
	sleep 1
done
