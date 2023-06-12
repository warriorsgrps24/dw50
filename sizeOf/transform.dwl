%dw 2.0
output application/json
---
payload.message groupBy $ mapObject ((value, key, index) -> 
(key):sizeOf(value)
) 
//using groupBy group the values based on letter and counting the value letters using Sizeof