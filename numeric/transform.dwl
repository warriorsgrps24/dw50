%dw 2.0
output application/json
import * from dw::core::Strings
---
//(payload.OrderNumber splitBy  "_")[1]
//payload.OrderNumber substringAfter  "_"
//flatten(payload.OrderNumber scan /\d/) joinBy  ""
payload.OrderNumber filter (isNumeric($))

//filtering the payload getting numeric value using isNumeric function
//"437652"