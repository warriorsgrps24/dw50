%dw 2.0
output application/json
---
payload.applicant map   {
   firstName: $.firstName,
   "type": $.phone.'type',
 "phone": ($.phone filter ($."type"=="work"))[0].number
 }