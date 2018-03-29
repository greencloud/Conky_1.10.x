#!/usr/local/bin/bash

IP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')

if [[ ! -z ${IP} ]]; then
	echo "$IP"
else
	echo "Loading..."
fi
