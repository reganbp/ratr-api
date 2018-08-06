#!/bin/bash

curl "http://localhost:4741/ratings" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
