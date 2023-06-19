%dw 2.0
output application/json  
---
payload.EMPLOYE_EXPORT_UCN distinctBy ((item, index) -> item.EMP_ID ++ (item.EMP_DATE_EXPORT as Date))
/*
{
  "EMPLOYE_EXPORT_UCN": [
    {
      "EMP_ID": 64,
      "EMP_SIREN": "83956750",
      "EMP_DATE_EXPORT": "2023-03-31T08:20:02.000Z"
    },
    {
      "EMP_ID": 64,
      "EMP_SIREN": "83956750",
      "EMP_DATE_EXPORT": "2023-04-30T13:28:02.000Z"
    },
    {
      "EMP_ID": 84,
      "EMP_SIREN": "35255221",
      "EMP_DATE_EXPORT": "2023-04-19T07:24:00.000Z"
    }
  ]
}
*/