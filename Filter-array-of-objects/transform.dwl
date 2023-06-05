%dw 2.0
output application/json
var productIds = ["1","2"]
---
payload filter ((item, index) -> !(productIds contains item.PRODUCT_ID) or item.ORDER_ID >1 )


/*
[
  {
    "PRODUCT_ID": "3",
    "ORDER_ID": 1
  },
  {
    "PRODUCT_ID": "1",
    "ORDER_ID": 2
  },
  {
    "PRODUCT_ID": "3",
    "ORDER_ID": 2
  }
]
*/