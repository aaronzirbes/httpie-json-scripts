#!/bin/bash

. host.include

countStr=3
service=$1
data=$2

if [ "$service" == "" ]; then
    echo "You must supply a service name"
    exit 1
fi

if [ "$data" == "" ]; then
    echo "You must supply a $service JSON creation request payload file"
    exit 1
fi

BASE_URL=`getUrl entity-gateway`/${service}s

# https://github.com/jkbr/httpie
echo "http POST ${BASE_URL} ${HEADERS}"
time http POST ${BASE_URL} ${HEADERS} < $data

