%dw 2.0
output application/json
---
payload.products map ((it, ind) ->
{
    id: it.id,
    'type': it."type",
    price: (payload.price filter ((item, index) -> item.id contains it.id)).cost[0]
})

/*
[
 {
 "id": "5001",
 "type": "None",
 "price": 2
 },
 {
 "id": "5002",
 "type": "Glazed",
 "price": null
 },
 {
 "id": "5005",
 "type": "Sugar",
 "price": 5
 },
 {
 "id": "5007",
 "type": "Powdered Sugar",
 "price": ""
 },
 {
 "id": "5006",
 "type": "Chocolate with Sprinkles",
 "price": null
 },
 {
 "id": "5003",
 "type": "Chocolate",
 "price": null
 },
 {
 "id": "5004",
 "type": "Maple",
 "price": 6
 }
]
*/