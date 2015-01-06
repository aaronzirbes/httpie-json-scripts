#!/bin/bash

. host.include

if [ ! -f "$1" ]; then
    echo "You must supply a customer creation request payload file"
    exit 1
fi

path="/customers"

# https://github.com/jkbr/httpie
echo "http POST ${customer_service}${path}"
time http POST ${customer_service}${path} < $1

