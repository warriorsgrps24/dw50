%dw 2.0
output application/json
---
collection: Dataitem: (payload.item filter ((item, index) -> index <2))


/*
{
Collection:[
"Dataitem":{
{
"EId":"1234",
"EName" :"mule
},{
"EId":"5678"
"EName" :"soft​
​}}
]​}*/