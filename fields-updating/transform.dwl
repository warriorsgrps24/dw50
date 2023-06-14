%dw 2.0
output application/json
---
payload update {
case .value -> $ map ((item, index) -> item update {
    case .roles -> $ map  ((item1, index1) -> value: item1) reduce ($$ ++ $ )
    }
    )
    }

/*
{
  "@aaaa": 107,
  "value": [
    {
      "id": 4,
      "userId": "abc@gmail.com",
      "eMail": "abc@gmail.com",
      "userType": "Comp",
      "Status": "Ac",
      "firstName": "Cla",
      "lastName": "Hn",
      "roles": [
        "values": "System",
        "values":"Reviewer",
        "values":"ReportAccess",
        "values":"Access",
        "values": "Other",
        "values":"Pow",
        "values": "Firm"]},
    {"id": 5,
      "userId": "abc@gmail.com",
      "eMail": "abc@gmail.com",
      "userType": "Company",
      "masterUserStatus": "Active",
      "firstName": "Angie",
      "lastName": "White",
      "roles": [
        "values":"SAdmin",
        "values":"TK",
        "values":"Access",
        "values":"rtAccess",
        "values":"tAccess",
        "values":"Reports",
        "values":"Schedule",
        "values":"Powe",
        "values":"Power",
        "values":"Firm"
      ]
    }
  ]}
*/