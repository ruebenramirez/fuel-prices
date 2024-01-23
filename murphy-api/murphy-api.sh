#!/usr/bin/env bash


curl --request POST \
  --header 'content-type: application/json' \
  --url 'https://service.murphydriverewards.com/api/store' \
  --data '{pageSize: 10, range: 20, latitude: 29.6666145, longitude: -100.8451467}' | jq
