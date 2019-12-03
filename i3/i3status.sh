#!/bin/bash

i3status -c /etc/i3status.conf | while :
do
	read line
	ram=`~/.config/i3/ram_usage.sh`
	echo "$ram | $line" || exit 1
done

