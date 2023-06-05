%dw 2.0
output application/json
---
payload.oneTis splitBy  "," map {
    oneTis: $
}