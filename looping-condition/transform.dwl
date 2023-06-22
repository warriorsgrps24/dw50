%dw 2.0
output application/json
var loopCount = 5
var payloadSize = sizeOf(payload)
var difference = loopCount - payloadSize
---
payload ++ ((1 to difference) map {
    "message": "Default"
})

//max size of the o/p array is 5. I need to add 2 more default json into the i/p array then using variables and map the data using difference