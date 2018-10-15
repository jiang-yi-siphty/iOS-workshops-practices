//: [Previous](@previous)

import Foundation

var pythons = ["John", "Michael", "Graham", "Terry", "Eric", "Terry"]
pythons.removeAll { $0.hasPrefix("Terry") }
print(pythons)

var scores = [60, 75, 85, 88, 95, 92]
scores.removeAll { $0 < 80 }
print(scores)
//: [Next](@next)


scores.removeAll(keepingCapacity: true)
print(scores)
