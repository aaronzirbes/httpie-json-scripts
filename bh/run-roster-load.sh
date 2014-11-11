#!/bin/bash

. host.include

# Run Roster Load

if [ ! -f "$1" ]; then
    echo "You must supply a valid JSON file"
    exit 1
fi

path="/memberload"

# https://github.com/jkbr/httpie
time http POST ${member_service}${path} < $1

# KSS - Hourly: [317] = 692E0C3C119A11E1942912313F047E54
# KSS - Salaried: [318] = 692E0CB4119A11E1942912313F047E54
