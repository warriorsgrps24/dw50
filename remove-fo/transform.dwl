%dw 2.0
output application/json
---
// payload filterObject ((value, key) ->
// (key as String != "first name")
// and key as String !="last name")

payload mapObject ((value, key, index) -> if(key ~='age') (key):value else {})