%dw 2.0
output application/json  
---
flatten(payload map ((item, index) -> item.id map ((item2, index2) -> {
"id": item2,
"source": item.source
})))
