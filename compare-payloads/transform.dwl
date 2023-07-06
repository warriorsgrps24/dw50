%dw 2.0
import * from dw::core::Arrays
var payload2 = [
  {
    "userid": "27517",
    "email": "jjosebadillo@hotmail.com"
  },
  {
    "userid": "27514",
    "email": "cmartin@cfiemail.com"
  },
  {
    "userid": "27515",
    "email": "philip.dupuis@td.com"
  }
]
output application/json  
---
join(payload, payload2, (n) -> n.user_id, (n2) -> n2.userid) map ({
  "courseCode": $.l.course_code,
  "courseName": $.l.course_name,
  "userStatus": $.l.enrollment_status,
  "enrolledDate": $.l.enrollment_created_at,
  "expirationDate": $.l.enrollment_validity_end_date,
  "CompletionDate": $.l.enrollment_completion_date,
  "userID": $.r.userid,
  "email": $.r.email
})