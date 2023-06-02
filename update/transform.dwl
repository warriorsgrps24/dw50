%dw 2.0
output json
---
payload  update {
    case .username -> lower($)
    case .location.address.street ->  $ replace $ with "Fiskargatan"
}
//updating the fields with user name with lowercase and street name as required by using update function