#!/bin/bash

. host.include

path="/sponsors"

# https://github.com/jkbr/httpie

echo "http GET ${employer_service}${path}"
bloom_ids=`http --pretty format GET ${employer_service}${path} \
        |grep -E '^ {8}"bloomId":' \
        |sed -e 's/.*": "//' -e 's/",.*//'`

for bloom_id in $bloom_ids; do
    echo "Sponsor Bloom ID: $bloom_id"
done

