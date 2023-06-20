  %dw 2.0
output application/json  
---
payload map ((item, index) -> {
    Id: item.Id,
    coverage: item.coverage - "covDeductibles" ++ (if (!isEmpty(item.coverage.test)) item.coverage.test else {})
})