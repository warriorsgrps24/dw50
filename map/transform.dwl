%dw 2.0
output json
---
payload map ($ mapObject ((value, key, index) -> (lower(key)):upper(value) ))
//using map for iterating array and using map object to iterate an object and and using upper function to values