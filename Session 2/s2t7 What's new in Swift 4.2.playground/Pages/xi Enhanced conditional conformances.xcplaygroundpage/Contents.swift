//: [Previous](@previous)

import Foundation

protocol Purchaseable {
    func buy()
}

struct Book: Purchaseable {
    let name: String
    func buy() {
        print("You bought the Book: \(name)")
    }
}

extension Array: Purchaseable where Element: Purchaseable {
    func buy() {
        for item in self {
            item.buy()
        }
    }
}

fileprivate extension String {
    static let a = "a"
}
//: [Next](@next)

let items: Any = [Book(name: "To Kill a Mockingbird "),
                  Book(name: "The Book Thief"),
                  Book(name: "The Underground Railroad"),
                  Book(name: "Pride and Prejudice")]

if let books = items as? Purchaseable {
    books.buy()
}

print("----------------------------------------")
// MARK: ---------------------------------------------------------
protocol Printable {
    func po()
}

extension Printable where Self == User {
    func po(){
        print("Owner name is \(self.name)")
    }
}

struct User: Printable {
    var name: String
    var pets: [String]
}

extension Array: Printable where Element: Printable {
    func po(){
        print("Print all owners:")
        self.forEach { printableItem in
            printableItem.po()
        }
    }
}

let users = [User(name: "Yi", pets: ["Daidai", "DaHuang", "Eddie"]),
            User(name: "April", pets: ["Applejack", "Twilight Sparkle", "Pinkie Pie"]),
            User(name: "Evelyn", pets: ["Suzy Sheep", "Rebecca Rabbit", "Peppa Pig"])]

users.po()


