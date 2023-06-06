%dw 2.0
output application/json
---
payload map
{
    firstName: $.fullName splitBy ' ' reduce $$,
    lastName: $.fullName splitBy ' ' reduce $,
    AddrWithValuesOf: $.city ++ ','++ $.state ++ ','++ $.postal ++ ','++ $.country,
    AddrWithPluck: $.city ++ ','++ $.state ++ ','++ $.postal ++ ','++ $.country,
    miles: $.miles as String{format:'.00'},
    DateofJoin: $.joinedDate as Date as String{format: 'dd-MMM-uuuu'}
}

/*
[
  {
    "firstName": "Peter",
    "lastName": "parker",
    "AddrWithValuesOf": "San Francisco,veniam,sit,Mexico",
    "AddrWithPluck": "San Francisco,veniam,sit,Mexico",
    "miles": 68.00,
    "DateofJoin": "22-Dec-2021"
  },
  {
    "firstName": "Joseph",
    "lastName": "charles",
    "AddrWithValuesOf": "Bangalore,Karnataka,560100,India",
    "AddrWithPluck": "Bangalore,Karnataka,560100,India",
    "miles": 49.00,
    "DateofJoin": "15-Nov-2021"
  }
]
*/