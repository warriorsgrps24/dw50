%dw 2.0
output application/json
import * from dw::core::Arrays
//importing arrays
var lookup = [
  {
    "AccountId__c": "1202378",
    "RecordId": "0124W000001hC6BQA1",
    "Company": "1570"
  },
  {
    "AccountId__c": "1202379",
    "RecordId": "0124W000001hC6BQ2U",
    "Company": "1570"
  },
  {
    "AccountId__c": "1202380",
    "RecordId": "0124W000001hC6BQ3AU",
    "Company": "1570"
  }
]
---
//printing matching data based on RecordId from payload and lookup variable
join(payload,lookup,(p1)->p1.AccountId,(l1)-> l1.AccountId__c) map ((item, index) ->item.l  update {
  case .RecordId -> item.r.RecordId default $
})
