#!/bin/bash

curl "http://localhost:8000/petsitters/" \
  --include \
  --request GET \
  --header "Authorization: Token ${TOKEN}"

echo
