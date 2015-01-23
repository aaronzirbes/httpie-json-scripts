#!/bin/bash

. host.include

if [ "$1" == "" ]; then
    echo "You must supply a customer key"
    exit 1
fi

path="/customers/${1}"

# https://github.com/jkbr/httpie
echo "http DELETE ${customer_service}${path}"
time http DELETE ${customer_service}${path}

