//: [Previous](@previous)

enum Pasta: CaseIterable {
    case cannelloni, fusilli, linguine, tagliatelle
}
print(Pasta.allCases)
for shape in Pasta.allCases {
    print("I like eating \(shape).")
}

enum Car: CaseIterable {
    static var allCases: [Car] {
        return [.ford, .toyota, .jaguar, .bmw, .porsche(convertible: false), .porsche(convertible: true)]
    }
    
    case ford, toyota, jaguar, bmw
    case porsche(convertible: Bool)
}

print(Car.allCases)
for car in Car.allCases {
    print(car)
}
//: [Next](@next)
