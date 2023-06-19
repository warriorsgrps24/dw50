%dw 2.0
output application/json
---
// payload  update {
//     case .dt -> $ as DateTime as String{format: 'dd-MM-uuu, HH:mm:ss'}
// }

dt: payload.dt as DateTime as String{format: 'dd-MM-uuu, HH:mm:ss'}

/*{"dt": "01-10-2020, 23:57:59"}*/