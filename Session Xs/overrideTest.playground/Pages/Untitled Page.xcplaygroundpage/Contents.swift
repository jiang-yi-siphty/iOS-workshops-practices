// Swift Quiz

class Base {
    var s = "" {
        willSet {
            print("Base willSet")
        }
        didSet {
            print("Base didSet")
            print("B: \(s)")
        }
    }
    
    func a() {
        print("func a()")
    }
}
class Sub: Base {
    override var s: String {
        willSet {
            print("Sub willSet")
        }
        didSet {
            print("Sub didSet")
            print("S: \(s)")
        }
    }
    override func a() {
        print("override func a()")
    }
}
let c = Sub()
c.s = "a"
print(c.s)

print("\n")

c.s = "b"
print(c.s)

c.a()

// What is printed?
