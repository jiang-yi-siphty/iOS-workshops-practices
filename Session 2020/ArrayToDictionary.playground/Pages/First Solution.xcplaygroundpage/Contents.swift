//: [Previous](@previous)
let nums = [ 16000, 21] 
let target = 16021

var numberDictionary: [Int: Int] = [:]
nums.enumerated().forEach { numberDictionary[$0.element] = $0.offset
}

var result: [Int] = []
nums.first { 
    let protential = target - $0
    guard  protential != $0,
        let protentialIndex = numberDictionary[protential],
        let currentIndex = numberDictionary[$0]  else { return false }
    result = [protentialIndex, currentIndex]
    return true
}

print( result.sorted(by: <))



//: [Next](@next)
