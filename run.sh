#!/bin/sh

domain_id="${DOMAIN?Need to provide Domain}"
subdomain="${SUBDOMAIN:-@}"
record_id="${RECORD?Need to provide Record}"
ipchecker="${CHECKER_URL:-http://ipecho.net/plain}"
api_key="${APIKEY?Need to provide Api Key}"
ip="$(curl  $ipchecker)"
echo content="$(curl -H "Authorization: Bearer $api_key" -H "Content-Type: application/json" \
              -d '{"name": "'"$subdomain"'", "data": "'"$ip"'"}' \
              -X PUT "https://api.digitalocean.com/v2/domains/$domain_id/records/$record_id")"
