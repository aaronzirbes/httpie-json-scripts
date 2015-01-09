#!/bin/bash

. host.include

if [ ! -f "$1" ]; then
    echo "You must supply a faultcode creation request payload file"
    exit 1
fi

path="/faultcodes"

# https://github.com/jkbr/httpie
echo "http POST ${faultcode_service}${path}"
time http POST ${faultcode_service}${path} < $1

