%dw 2.0
output application/json
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
---
payload map {
    CourseCode:$.course_id,
    CourseName:$.course_name,
    UserStatus:$.enrollment_status,
    enrollement_date:$.enrollment_created_at,
    expirationDate:$.enrollment_validity_end_date,
    CompletionDate:$.course_end_date,
    userid:$.user_id,
    email:payload2 filter ((item, index) ->item.userid contains  $.user_id) map ((item1, index1) -> item1.email)reduce ($)
}

/*
[
  {
    "CourseCode": 355,
    "CourseName": "Administración de la Inversión",
    "UserStatus": "enrolled",
    "enrollement_date": "2023-06-20 03:36:49",
    "expirationDate": null,
    "CompletionDate": null,
    "userid": 27517,
    "email": "jjosebadillo@hotmail.com"
  },
  {
    "CourseCode": 817,
    "CourseName": "Canada ETF Proficiency Series",
    "UserStatus": "in_progress",
    "enrollement_date": "2023-06-17 18:55:42",
    "expirationDate": null,
    "CompletionDate": null,
    "userid": 27514,
    "email": "cmartin@cfiemail.com"
  }
]
*/