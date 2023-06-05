%dw 2.0
output application/json
---
payload map ($ update {
    case .rate -> ($) as String
    case .APY -> ($) as String

})

/*
[
{
"rate": "0.03",
"APY": "0.03"
},
{ 
"rate": "0.1",
"APY": "0.1"
},
{
"rate": "0.1",
"APY": "0.1"
},
{
"rate": "0.3",
"APY": "0.3003"
},
{
"rate": "0.4",
"APY": "0.4006"
}
]
*/