import UIKit

var numbers = [3, 3]
var target = 6

var numberDictionary: [Int: Int] = [:]
numbers.enumerated().forEach { numberDictionary[$0.element] = $0.offset
}

print(numberDictionary)
var result: [Int] = []
numbers.first { 
    
    let protential = target - $0
    guard protential != $0,
        let protentialIndex = numberDictionary[protential],
        let currentIndex = numberDictionary[$0] else { return false }
    result = [protentialIndex, currentIndex]
    return true
}

print(result.sorted(by: <) )
