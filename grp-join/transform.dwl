%dw 2.0
output application/json
---
payload."input" groupBy $ mapObject ((value, key, index) -> (key): sizeOf(value)) pluck ($$ ++ $) joinBy ''