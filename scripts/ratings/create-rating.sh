#!/bin/bash

curl "http://localhost:4741/ratings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "rating": {
      "name": "'"${NAME}"'"
    }
  }'

echo



# "rating": "'"${RATING}"'",
# "notes": "'"${notes}"'"
