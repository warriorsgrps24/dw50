%dw 2.0
output application/json
import * from dw::core::Objects
---
(payload.result groupBy $.itemABC mapObject (
  {  
   itemABC: $$ ,
  AvgUsg: sum($.AvgUsg)
  }
)) divideBy 2

//getting itam values and sum of avg values and declared as two objects by using devideBy