%dw 2.0
var a = (payload.languageCode scan /'.*?'/)
var b = (payload.languageCode splitBy  " ")
output application/json  
---
//  {
//    "id": a[0][0][1 to -2],
//    "cid": a[1][0][1 to -2]
//  }

{
    id:b[2][1 to -2],
    cid:b[5][1 to -2]
}