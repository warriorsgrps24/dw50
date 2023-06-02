%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.orderId ) pluck ((value, key, index) -> value)
//using groupby based on orderid and using pluck to get array of array inside objects