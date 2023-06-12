%dw 2.0
import * from dw::core::Strings
output application/json
fun validatePhoneNumber(a)= if (payload.phone matches /(\()?\d{3}(\))?(-|\s)?\d{3}(-|\s)\d{4}$/) payload.phone else "Pattern is not matching"
---
validatePhoneNumber(payload.phone)
//using matches match the phone number, in this using if-else if it matches prints phone number else pattern not matching prints
