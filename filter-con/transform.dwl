%dw 2.0
output application/json
var test= payload.plano filter ($.id == 1) flatMap ($.variaveis filter ($.id == 4))
---
"teste": test.nome[0] ++ " - " ++ (test flatMap ($.valores filter ($.id == 4587) map $.valor
    ))[0]
//using filter function and concatinate the filter values from payload to required output