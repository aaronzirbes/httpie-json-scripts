#!/bin/bash

ENV=dev
URL="http://authentication-service-${ENV}.connectedfleet.io:8080/userLogin"
echo '{"clientId":"OEMPortal","username":"bsmith@test.com","password":"password"}' | http POST $URL
