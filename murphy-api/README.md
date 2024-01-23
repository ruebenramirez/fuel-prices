
# Murphy Gas API

endpoint: https://service.murphydriverewards.com/api/store

## example curl request:

```bash
curl --request POST \
  --header 'content-type: application/json' \
  --url 'https://service.murphydriverewards.com/api/store' \
  --data '{pageSize: 10, range: 20, latitude: 29.6666145, longitude: -100.8451467}' | jq
```

Note: we're piping the curl response to `jq` to improve the readability of the JSON response.

## example response:

```json
{
  "data": {
    "pageNo": 1,
    "pageSize": 10,
    "totalCount": 1,
    "stores": [
      {
        "id": 3205,
        "storeNumber": 7793,
        "chainName": "Murphy USA",
        "phone": "(830) 778-6888",
        "address": "2427 Veterans BLVD",
        "city": "Del Rio",
        "state": "TX",
        "zip": "78840",
        "country": "US",
        "latitude": 29.39658,
        "longitude": -100.90418,
        "sundayOpen": "6:00AM",
        "sundayClose": "12:00AM",
        "mondayOpen": "4:30AM",
        "mondayClose": "12:00AM",
        "tuesdayOpen": "4:30AM",
        "tuesdayClose": "12:00AM",
        "wednesdayOpen": "4:30AM",
        "wednesdayClose": "12:00AM",
        "thursdayOpen": "4:30AM",
        "thursdayClose": "12:00AM",
        "fridayOpen": "4:30AM",
        "fridayClose": "12:00AM",
        "saturdayOpen": "4:30AM",
        "saturdayClose": "12:00AM",
        "openDate": "09/27/2021",
        "closeDate": "",
        "sellTobacco": true,
        "sellAlcohol": false,
        "sellFreshFood": false,
        "hasCoffeeKiosk": true,
        "sellFountainDrink": true,
        "hasPublicRestroom": true,
        "sellLottery": true,
        "sellDiesel": true,
        "hasAtm": true,
        "sellBeer": true,
        "hasRollerGrill": true,
        "hasCarWash": false,
        "sellIce": true,
        "sellPropane": true,
        "sellAutomotive": true,
        "acceptEbt": true,
        "has24hrFuel": true,
        "lastUpdateUtc": "0001-01-01T00:00:00Z",
        "distance": 19.008463201863165,
        "marketScope": "TX",
        "isInRewardZone": true,
        "timeZone": "Central Standard Time",
        "gasPrices": [
          {
            "displayIndex": 0,
            "isPrimary": true,
            "fuelType": "Regular",
            "descr": "Regular",
            "price": 2.619,
            "currencySymbol": "$",
            "lastUpdateUtc": "2024-01-23T17:39:18.337Z",
            "fuelTypeId": 12
          },
          {
            "displayIndex": 1,
            "isPrimary": true,
            "fuelType": "Midgrade",
            "descr": "Plus",
            "price": 2.969,
            "currencySymbol": "$",
            "lastUpdateUtc": "2024-01-23T17:39:18.337Z",
            "fuelTypeId": 13
          },
          {
            "displayIndex": 2,
            "isPrimary": true,
            "fuelType": "Premium",
            "descr": "Premium",
            "price": 3.319,
            "currencySymbol": "$",
            "lastUpdateUtc": "2024-01-23T17:39:18.337Z",
            "fuelTypeId": 14
          },
          {
            "displayIndex": 3,
            "isPrimary": true,
            "fuelType": "Diesel",
            "descr": "Diesel",
            "price": 3.399,
            "currencySymbol": "$",
            "lastUpdateUtc": "2024-01-23T17:39:18.337Z",
            "fuelTypeId": 15
          },
          {
            "displayIndex": 5,
            "isPrimary": false,
            "fuelType": "RegularNoEthanol",
            "descr": "Ethanol Free Regular",
            "price": 3.559,
            "currencySymbol": "$",
            "lastUpdateUtc": "2024-01-23T17:39:18.337Z",
            "fuelTypeId": 17
          }
        ],
        "amenities": [
          1,
          5,
          6,
          7,
          8,
          17,
          18
        ],
        "schedules": [
          {
            "openTime": "2024-01-22T10:30:00.000Z",
            "closeTime": "2024-01-23T06:00:00.000Z"
          },
          {
            "openTime": "2024-01-23T10:30:00.000Z",
            "closeTime": "2024-01-24T06:00:00.000Z"
          },
          {
            "openTime": "2024-01-24T10:30:00.000Z",
            "closeTime": "2024-01-25T06:00:00.000Z"
          }
        ],
        "shortMessage": "24HR Fuel. Pay at the Pump",
        "message": "24HR Fuel. Pay at the Pump",
        "messageOfTheDay": "24HR Fuel. Pay at the Pump",
        "availableFuelTypeIds": [
          12,
          17,
          13,
          14,
          15
        ]
      }
    ]
  },
  "lastUpdate": "2024-01-23T18:03:44.8375943Z",
  "success": true,
  "message": null
}
```

Because this is a RESTful API, we have a larger response payload than GraphQL APIs.

