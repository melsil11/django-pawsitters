#!/bin/bash

curl "http://localhost:8000/petsitters/${ID}/" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token ${TOKEN}" \
  --data '{
    "petsitter": {
      "name": "'"${NAME}"'",
      "color": "'"${COLOR}"'",
      "ripe": "'"${RIPE}"'"
    }
  }'

echo
