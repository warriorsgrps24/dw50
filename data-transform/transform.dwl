%dw 2.0
output application/json
import * from dw::core::Objects
var x = payload takeWhile ((value, key) -> key as String != "ENDO" )
var y = payload -- x
var z = (y mapObject(
  ($$) :$$$
)).*ENDO
---
x ++ ENDOS: z map ((item, index1) -> 
  y filterObject ((value, key, index) -> index>=item and index <= (z[index1+1] default sizeOf(y))-1)
)