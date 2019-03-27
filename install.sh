#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

if systemctl --all | grep -Fq 'toroxy'; then   
	echo "Toroxy detected. Stopping..."
	systemctl stop toroxy  
fi

apt-get update
apt-get install -yq python-pip
apt-get install -yq iptables-persistent
apt-get install -yq tor

pip install stem

./toroxy install