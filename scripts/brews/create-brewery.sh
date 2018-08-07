#!/bin/bash

curl "http://localhost:4741/brews" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "brew": {
      "name": "'"${NAME}"'"
    }
  }'

echo


# "brewery_id": "'"${brewery_id}"'"
