%dw 2.0
output application/json
import * from dw::core::Strings
---
payload.AU groupBy ((item, index) -> substringAfter(item,"-")[0 to 3])