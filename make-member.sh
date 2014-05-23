#!/bin/bash

. host.include

if [ ! -f "$1" ]; then
    echo "You must supply a member creation request payload file"
    exit 1
fi

path="/members/"

# https://github.com/jkbr/httpie
echo "http POST ${member_service}${path}"
time http POST ${member_service}${path} < $1

