%dw 2.0
var dateTime1 = "2023-06-10T14:44:58" as DateTime
var dateTime2 = "2023-06-10T14:55:50" as DateTime
output application/json  
---
(dateTime2 - dateTime1) as Period - |PT2M30S| > 0
//time stamp difference