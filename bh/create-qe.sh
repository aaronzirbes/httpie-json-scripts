#!/bin/bash

. host.include

# QE Validation

if [ ! -f "$1" ]; then
    echo "You must supply a valid JSON file"
    exit 1
fi

member_bloom_id=`grep memberBloomId "$1" |sed -e 's/.*: "//' -e 's/",.*//'`

path="/members/${member_bloom_id}/events/qualifyingEvent"

# https://github.com/jkbr/httpie
echo http PUT ${member_service}${path}
time http PUT ${member_service}${path} < $1

# KSS - Hourly: [317] = 692E0C3C119A11E1942912313F047E54
# KSS - Salaried: [318] = 692E0CB4119A11E1942912313F047E54
