//: [Previous](@previous)

import Foundation

//var str = "Hello, playground"
//
//let range = str.endIndex(of: " play")
//str.range(of: "pl")
//print(range?.upperBound.)
let str = "abcde"
if let range = str.range(of: "cd") {
    let substring = str[range.upperBound...] // or str[str.startIndex..<range.lowerBound]
  print(substring)  // Prints ab
}
else {
  print("String not present")
}

//: [Next](@next)
