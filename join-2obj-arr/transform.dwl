%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> {
    (key) : [{(value)}]
})

// join two objects of each Array