
#!/bin/bash

. host.include

if [ "$1" == "" ]; then
    echo "You must supply a latitude and longitude"
    exit 1
fi

if [ "$2" == "" ]; then
    echo "You must supply a latitude and longitude"
    exit 1
fi

countStr=3
lat=$1
lon=$2

path="/dealers/by-location/${countStr}@${lat},${lon}"

# https://github.com/jkbr/httpie
echo "http GET ${dealer_service}${path}"
time http GET ${dealer_service}${path}
