%dw 2.0
output application/json
---

payload map {
   "DOCUMENT TITLE": $."content-0".document_number ++ "-" ++ $."content-0".major_version_number ++ "."++ $."content-0".minor_version_number ++  "-" ++  $."content-0".title,
   STATUS: $."content-1".status

}
//getting document title using concatinate the fields based on requirement

/*
[
 {
  "DOCUMENT TITLE": "DOC-1-0.1-Testing Document"
  "STATUS" : "Draft"
 },
 {
  "DOCUMENT TITLE": "DOC-2-1.0-Testing Document"
  "STATUS" : "Effective"
 },
 {
  "DOCUMENT TITLE": "DOC-3-0.3-Testing Document"
  "STATUS" : "Draft"
 },
]
*/

