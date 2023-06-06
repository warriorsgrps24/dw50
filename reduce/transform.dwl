%dw 2.0
output application/json
---
payload map $ reduce ((item, accumulator) -> item ++ accumulator)
//array of obj to single obj by using reduce function