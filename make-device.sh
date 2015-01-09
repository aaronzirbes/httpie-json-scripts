#!/bin/bash

. host.include

if [ ! -f "$1" ]; then
    echo "You must supply a device creation request payload file"
    exit 1
fi

path="/devices"

# https://github.com/jkbr/httpie
echo "http POST ${device_service}${path}"
time http POST ${device_service}${path} < $1

