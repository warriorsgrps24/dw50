%dw 2.0
output json

var movies : Array<String> = ["The Terminator", "Titanic", "Avatar"]

fun isOddNum(n : Number) : Boolean = (n mod 2) == 1
fun isOddNum(s : String) : Boolean = (sizeOf(s) mod 2) == 1
---
movies filter isOddNum(sizeOf($))
//filter the movies array so that only movies with an odd name length make it through.