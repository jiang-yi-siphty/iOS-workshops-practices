//: [Previous](@previous)

import Foundation

@dynamicMemberLookup
struct Person {
    var properties = [String: String]()
    
    subscript(dynamicMember member: String) -> String {
        return properties[member, default: "🚨No such key/value"]
    }

    subscript(dynamicMember member: String) -> Int {
        return 48
    }

    subscript(dynamicMember member: String) -> (_ input: String) -> Void {
        return {
            print("Hello! I live at the address \($0).")
        }
    }
}

var person = Person()
person.properties = ["name": "Taylor Swift", "city": "Nashville", "gender": "Female"]

let name: String = person.name
print(name)
let city: String = person.city
print(city)
let favoriteIceCream: String = person.favoriteIceCream
print(favoriteIceCream)
let gender: String = person.gender
print(gender)

let age: Int = person.age
print("\(age) years old")

let aFunc: (_ input: String) -> Void = person.address
aFunc("Unit 5 / 43-47 Cross St. Baulkham Hills, NSW")
//: [Next](@next)
