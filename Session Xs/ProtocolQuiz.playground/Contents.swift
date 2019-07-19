// Swift (5.0) Quiz

import Foundation

protocol A {
    var desc: String { get }
}

extension A {
    var desc: String { "A" }
}

protocol B {
    var desc: String { get }
}

extension B {
    var desc: String { "B" }
}


protocol C {
    var address: String { get }
}

extension C {
    var address: String { "C" }
}

struct Stru: A {
    var street: String
    var desc: String { street }
}

let a = Stru(street: "🧸")
a[keyPath: \A.desc]

let b = Stru(street: "🐶")
b.desc


struct Stru2: A {
}

let c = Stru2()
c.desc
c[keyPath: \A.desc]


struct Stru3: A, B {
    var street: String
    var desc: String { street }
}

let d = Stru3(street: "🦖")
d.desc
d[keyPath: \A.desc]
d[keyPath: \B.desc]


struct Stru4: B, C {
}

let e = Stru4()
e.desc
e.address
e[keyPath: \B.desc]
e[keyPath: \C.address]

// What's the output?
