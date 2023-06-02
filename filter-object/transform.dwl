%dw 2.0
output json
---
payload filterObject ((value, key, index) -> !(key contains 'secret') and value !=false)
//removing secret and false values from a list of payload