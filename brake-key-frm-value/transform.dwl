%dw 2.0
output application/json  
---
 
  ResultBody: payload.Body map ({
    ZID: $.ID,
    ZType: $.Type,
    "ZCODES": $.Codes map ({
      "ZKEYS": keysOf($),
      "VALUES": valuesOf($)
    })
  })