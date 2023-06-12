%dw 2.0
output application/json
var reward = payload.data filter((item)-> item.itemType=='Reward')
var installation = payload.data filter((item)-> item.itemType=='Installation')
var items = [] ++ reward ++ installation
---
{
"itemType":"DD-Offer",
"id":"DD-1",
"items": items map {
itemType : $.itemType,
id : $.id
}
}
//create a variables are equest to itemType then map the data using this variables into required output
