%dw 2.0
output application/json 
 var input2 =  [
  {
   "email": "aa@aa.com",
   "RegistrationDate": "2023-05-09T19:06:39Z"
  },
  {
   "email": "bb@bb.com",
   "RegistrationDate": "2023-05-09T18:28:30Z"
  },
  {
   "email": "dd@dd.com",
   "RegistrationDate": "2023-05-09T14:33:40Z"
  }
 
]
 
---
(payload flatMap ((item, index) -> (input2 filter $.email == item.email) map (item ++ {"RegistrationDate" : $."RegistrationDate"}))) map $ - "id"