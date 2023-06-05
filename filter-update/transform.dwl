%dw 2.0
import * from dw::core::Strings
output application/json
---
payload filter ((item, index) -> item.value != null) map (item, index) -> item  update {
    case .formattedValue -> '\$' ++ substringAfter($,'\$') * 1.15 as String{format:'0.00'}
}


/*
[{
"value": "130.434782608696",
"formattedValue": "$130.43343",
"userPriceGroup": "community_costs"
},
{
"value": "266.086956521739",
"formattedValue": "$266.0934",
"userPriceGroup": "Summer, weekend and public holidays"
}]
*/