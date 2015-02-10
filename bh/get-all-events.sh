#!/bin/bash

. host.include

# QE Validation

if [ "" == "$1" ]; then
    echo "You must supply a valid member bloom id"
    exit 1
fi

long_ago='2013-01-01'
today=`date +%Y-%m-%d`

member_bloom_id="$1"

path="/members/${member_bloom_id}/events/?asOfDate=${today}"

# https://github.com/jkbr/httpie
echo http GET ${member_service}${path}
time http GET ${member_service}${path}

