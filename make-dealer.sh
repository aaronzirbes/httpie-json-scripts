#!/bin/bash

. host.include

if [ ! -f "$1" ]; then
    echo "You must supply a dealer creation request payload file"
    exit 1
fi

path="/dealers"

# https://github.com/jkbr/httpie
echo "http POST ${dealer_service}${path}"
time http POST ${dealer_service}${path} < $1

