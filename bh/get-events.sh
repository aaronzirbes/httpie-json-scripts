#!/bin/bash

. host.include

if [ "$1" == "" ]; then
    echo "You must supply a member bloom ID"
    exit 1
fi

member_bloom_id="$1"

path="/members/${member_bloom_id}"

# https://github.com/jkbr/httpie
echo "http GET ${member_service}${path}"
time http GET ${member_service}${path}

