#!/bin/bash

set -e
source .env || true

APIUSER=${GODADDY_APIKEY}
APIPASS=${GODADDY_APISECRET}

NAME=$1
IP=$2
TYPE=${3-A}
DOMAIN=${GODADDY_DOMAIN-voronenko.net}


echo curl -H 'Content-Type: application/json' -H "Authorization: sso-key ${APIUSER}:${APIPASS}" -X PATCH -d "[{\"type\":\"${TYPE}\",\"name\":\"$NAME\",\"data\":\"$IP\",\"ttl\":3600}]" https://api.godaddy.com/v1/domains/${DOMAIN}/records

curl -H 'Content-Type: application/json' -H "Authorization: sso-key ${APIUSER}:${APIPASS}" -X PATCH -d "[{\"type\":\"${TYPE}\",\"name\":\"$NAME\",\"data\":\"$IP\",\"ttl\":3600}]" https://api.godaddy.com/v1/domains/${DOMAIN}/records
