%dw 2.0
output application/json
---
payload.Orders pluck totalprice:($.Price * $.Quantity)


/*
[{
"totalCost": 1995
},
{
"totalCost": 1495
}
]
*/