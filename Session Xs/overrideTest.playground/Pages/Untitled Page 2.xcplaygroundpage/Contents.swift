var a: String = "A"
var b: String!
var c: String?

b = "B"
a = b


b = nil
c = b

a = c ?? "ccc"

