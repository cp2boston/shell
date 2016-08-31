#!/bin/bash -e

if [ $# -lt 1 ]; then
    echo "usage: $0 api_key [alternate_url]"
    exit 1
fi
language_data="Por favor Señorita, says the man."

if [ -z "$2" ]; then
    url="https://api.rosette.com/rest/v1/language"
else
    url="$2/language"
fi

curl -s "$url" \
  -H "X-RosetteAPI-Key: $1" \
  -H 'Content-Type:application/json' \
  -H 'Accept:application/json' \
  -d "{\"content\": \"$language_data\"}"
