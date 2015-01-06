#!/bin/bash

. host.include

if [ "$1" == "" ]; then
    echo "You must supply a dealer key to get"
    exit 1
fi

path="/dealers/${1}"

# https://github.com/jkbr/httpie
echo "http GET ${dealer_service}${path}"
time http GET ${dealer_service}${path}


