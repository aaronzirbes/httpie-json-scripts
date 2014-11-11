#!/bin/bash

. host.include

if [ "$1" == "" ]; then
    echo "You must supply a employer bloom ID"
    exit 1
fi

employer_bloom_id="$1"

path="/employers/${employer_bloom_id}/planyears"

# https://github.com/jkbr/httpie
echo "http GET ${employer_service}${path}"
time http GET ${employer_service}${path}

