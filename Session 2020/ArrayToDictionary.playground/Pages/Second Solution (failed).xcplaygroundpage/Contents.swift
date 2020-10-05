//: [Previous](@previous)

let nums = [2,3,4,52,4,1]
let target = 8

struct NumberItem: Hashable {
    var element: Int
    var offset: Int
}

var numberDictionary: [Int: Int] = [:]
nums.enumerated().forEach { numberDictionary[$0.offset] = target - $0.element }

var result: [Int] = []
nums.enumerated().first { (index, element) -> Bool in
    guard let protentialIndex = numberDictionary.filter({ (key, value) -> Bool in
        value ==  target - element
    }),
        let currentIndex = numberDictionary[$0], 
        protentialIndex != currentIndex  else { return false }
    result = [protentialIndex, currentIndex]
    return true
}
print( result.sorted(by: <))

//: [Next](@next)
