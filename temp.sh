#!/usr/local/bin/bash 

STR=$(sysctl dev.cpu | grep cpu.7.temp)

sed -e 's#.*:\(\)#\1#' <<< "$STR"
