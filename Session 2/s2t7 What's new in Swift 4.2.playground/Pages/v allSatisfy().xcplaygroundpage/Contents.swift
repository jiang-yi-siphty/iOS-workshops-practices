//: [Previous](@previous)

import Foundation

var scores = [60, 75, 85, 88, 95, 92]
var passed = scores.allSatisfy { $0 >= 85 }
passed


scores = [85, 88, 95, 92]
passed = scores.allSatisfy { $0 >= 85 }
scores
passed
//: [Next](@next)
