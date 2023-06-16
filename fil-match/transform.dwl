%dw 2.0
output application/json
---
payload filter ((item, index) -> item.version matches  /\d+.0/)