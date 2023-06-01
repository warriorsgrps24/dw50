%dw 2.0
output application/xml
---
prices:payload.prices mapObject{
    ($$):($+5)
}
//adding the price required to fuels price

/*
<prices>
<oil>30</oil>
<petrol>60</petrol>
<diesel>79</diesel>
</prices>
*/