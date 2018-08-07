#!/bin/bash

curl "http://localhost:4741/breweries" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "brewery": {
      "name": "'"${NAME}"'"
    }
  }'

echo
