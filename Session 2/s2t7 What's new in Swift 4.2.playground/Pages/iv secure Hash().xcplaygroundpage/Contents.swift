//: [Previous](@previous)

import Foundation

struct iPad: Hashable {
    var serialNumber: String
    var capacity: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(serialNumber)
    }
}

let first = iPad(serialNumber: "12345", capacity: 256)
let second = iPad(serialNumber: "54321", capacity: 512)
//let third = iPad

var hasher = Hasher()
hasher.combine(first)
hasher.combine(second)
let hash = hasher.finalize()


//: [Next](@next)
