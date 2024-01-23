#!/usr/bin/env bash

curl --request POST \
  --header 'content-type: application/json' \
  --url 'https://www.gasbuddy.com/graphql' \
  --data '{       "operationName": "GetStation",       "variables": {         "id": "64111"       },       "query": "query GetStation($id: ID!) { station(id: $id) { prices { fuelProduct credit { price postedTime } } } }"     }'
