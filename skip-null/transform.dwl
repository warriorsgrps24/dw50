%dw 2.0
output application/xml skipNullOn="everywhere"
---
users:{
    user:payload map {
        name: $.name,
        insurance: $.insurance
    }
}
//skip null values and mapping the data

/*
<users>
  <user>
    <name>Julian</name>
    <insurance>Osde</insurance>
  </user>
  <user>
    <name>Mariano</name>
  </user>
</users>
*/