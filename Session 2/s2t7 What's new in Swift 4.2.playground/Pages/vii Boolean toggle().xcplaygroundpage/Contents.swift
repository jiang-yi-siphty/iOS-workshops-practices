var booleanValue = true
print(booleanValue)
booleanValue.toggle()
print(booleanValue)

struct S {
    var name: String
    let age: Int

    mutating func changeName(_ newName: String) {
        self.name = newName
    }
}



var s = S(name: "aaa", age: 222)
s.changeName("cdfvdf")
