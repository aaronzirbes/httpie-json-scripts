#!/bin/bash

. host.include

if [ ! -f "$1" ]; then
    echo "You must supply a vehicle creation request payload file"
    exit 1
fi

path="/vehicles"

# https://github.com/jkbr/httpie
echo "http POST ${vehicle_service}${path}"
time http POST ${vehicle_service}${path} < $1

