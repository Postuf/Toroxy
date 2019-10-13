#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

if systemctl --all | grep -Fq 'toroxy'; then   
	echo "Toroxy detected. Stopping..."
	systemctl stop toroxy  
fi

rm /etc/systemd/system/toroxy.service
rm /usr/bin/toroxy

echo "Toroxy uninstalled"