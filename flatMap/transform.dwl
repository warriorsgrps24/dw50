%dw 2.0
output application/json
---
payload flatMap ((item, index) -> item.books map
{
    id: item.id,
    ($)
}) distinctBy $.bookid groupBy $.id mapObject ((value, key, index) ->
{
    id: key,
    books: value map $ -'id'
})





/*
[{
"id": "1",
"books": [{
"bookid": "1234",
"title": "C#"
},
{
"bookid": "4321",
"title": "VB"
}
]
},
{
"id": "2",
"books": [{
"bookid": "5678",
"title": "Java"
}]
},
{
"id": "3",
"books": [{
"bookid": "56781",
"title": "Java"
}]
}
]
*/