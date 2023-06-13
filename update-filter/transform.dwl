%dw 2.0
output application/json
---
payload update 
{
    case .result -> $ map ((item, index) ->
    {
        Id: item.Id,
        Name: item.Name,
        message: item.errors map $.message reduce($)
    }) filter ((item, index) -> item.message != null )
}
/*
{
"result":[{
"Id": 135,
"Name": "ABC2",
"message": "Bad request"
},
{
"Id": 136,
"Name": "ABC3",
"message": "internal error"
}]}*/