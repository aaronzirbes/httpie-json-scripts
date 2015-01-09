#!/bin/bash

. host.include

if [ ! -f "$1" ]; then
    echo "You must supply a manufacturer creation request payload file"
    exit 1
fi

path="/manufacturers"

# https://github.com/jkbr/httpie
echo "http POST ${manufacturer_service}${path}"
time http POST ${manufacturer_service}${path} < $1

