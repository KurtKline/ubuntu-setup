#!/bin/bash

sleep 2
echo "The gnome shell will be restarted so that new extensions can load properly."
sleep 3

function sleep_countdown() {
	i=$@
	echo "Restarting shell in..."
	while [ $i -gt 0 ]; do
		figlet "$i" | lolcat
		sleep 1
		let i=i-1
	done
}

sleep_countdown 5
killall -1 gnome-shell
