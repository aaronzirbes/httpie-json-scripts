#!/bin/bash

. host.include

if [ ! -f "$1" ]; then
    echo "You must supply a user creation request payload file"
    exit 1
fi
username=`grep username $1 |sed -e 's/.*": *//' -e 's/"//g' -e 's/,$//'`

path="/users/$username"

# https://github.com/jkbr/httpie
echo "http POST ${user_service}${path}"
time http POST ${user_service}${path} < $1

