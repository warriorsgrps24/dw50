%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.region) pluck $ map ((item, index) -> {
  "regionName": item.region[0],
  "countryList": item.country map {
    "name": $
  }
})


/*
regionlist:[{
regionname: "Asia",
"countrylist"[{
"name": "india"},{
"name": "japan"
}]},{
regionname: "emea",
"countrylist"[{
"name": "india"
}}]
*/


