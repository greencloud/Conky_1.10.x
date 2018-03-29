#!/usr/local/bin/bash

PIP=$(dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}')

if [[ ! -z "${PIP}" ]]; then
	echo "$PIP"
else
	echo "Loading..."
fi
