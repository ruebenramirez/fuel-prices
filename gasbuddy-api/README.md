

# GasBuddy's GraphQL API

Gasbuddy uses GraphQL for their pricing API.

endpoint: https://www.gasbuddy.com/graphql




### GraphQL Query:

```json
{
  "operationName": "GetStation",
  "variables": {
    "id": "64111"
  },
  "query": "query GetStation($id: ID!) { station(id: $id) { prices { fuelProduct credit { price postedTime } } } }"
}
```

`64111` is the Gas Station ID for a Murphy gas station located in Del Rio, Texas.

The target graphql schema is available in the [https://www.gasbuddy.com/station/64111](https://www.gasbuddy.com/station/64111) page source. It contains a very large graphql query that I was able to then extract the specific fields I was looking for.

### example curl:

```bash
curl --request POST \
  --header 'content-type: application/json' \
  --url 'https://www.gasbuddy.com/graphql' \
  --data '{   "operationName": "GetStation",   "variables": {     "id": "64111"   },   "query": "query GetStation($id: ID!) { station(id: $id) { prices { fuelProduct credit { price postedTime } } } }" }' | jq
```

Note: we're piping the curl response to `jq` to improve the readability of the JSON response.

### Example response payload:

```json
{
  "data": {
    "station": {
      "prices": [
        {
          "fuelProduct": "regular_gas",
          "credit": {
            "price": 2.62,
            "postedTime": "2024-01-23T16:41:26.134Z"
          }
        },
        {
          "fuelProduct": "midgrade_gas",
          "credit": {
            "price": 2.97,
            "postedTime": "2024-01-23T16:41:26.151Z"
          }
        },
        {
          "fuelProduct": "premium_gas",
          "credit": {
            "price": 3.32,
            "postedTime": "2024-01-23T16:41:26.151Z"
          }
        },
        {
          "fuelProduct": "diesel",
          "credit": {
            "price": 3.42,
            "postedTime": "2024-01-23T16:41:26.168Z"
          }
        }
      ]
    }
  }
}
```

