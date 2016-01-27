#!/bin/bash -e

if [ $# -eq 0 ]; then
   echo "Must have API key to run example"
   exit 1
fi
sentiment_text_data="Sample"

curl "https://api.rosette.com/rest/v1/sentiment" \
  -H "user_key: $1" \
  -H 'Content-Type:application/json' \
  -H 'Accept:application/json' \
  -d "{\"content\": \"$sentiment_text_data\", \"options\": {\"model\": \"short-string\", \"explain\": true}}"
