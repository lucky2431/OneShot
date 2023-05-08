#!/data/data/com.termux/files/usr/bin/bash

function connect() {
	echo "Connecting to $1"
	wpa_supplicant -B -i wlan0 -c <(wpa_passphrase "$1" "$2")
	dhclient wlan0
}

function disconnect() {
	echo "Disconnecting from $1"
	wpa_cli terminate
}

function scan() {
	echo "Scanning for networks"
	iw wlan0 scan | grep SSID
}

function help() {
	echo "Usage: $0 [connect|disconnect|scan|help]"
}

if [ "$#" -eq 0 ]; then
	help
	exit 1
fi

case "$1" in
	connect)
		if [ "$#" -ne 3 ]; then
			echo "Usage: $0 connect <ssid> <password>"
			exit 1
		fi
		connect "$2" "$3"
		;;
	disconnect)
		if [ "$#" -ne 2 ]; then
			echo "Usage: $0 disconnect <ssid>"
			exit 1
		fi
		disconnect "$2"
		;;
	scan)
		scan
		;;
	help)
		help
		;;
	*)
		help
		exit 1
		;;
esac
