%dw 2.0
output json
var weekdays = [
  "mon",
  "tue",
  "wed",
  "thu",
  "fri",
  "sat",
  "sun"
]
// dayOfWeek is a value from 1 to 7
fun toWeekDay(date : String) : String = weekdays[(date as LocalDateTime).dayOfWeek - 1]
---
//toWeekDay("2020-10-01T22:00:00")
payload filter ((item, index) ->item.organizer ~= "Ross" ) map ((item, index) -> item
++ {
  "day": toWeekDay(item.datetime)
})
//while using filter the organizer then map the data with the data we can add week days along through the data