//: [Previous](@previous)

let nums = [3, 3] 
let target = 6

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var dict = [Int: Int]()
    
    for (i, num) in nums.enumerated() {
        if let lastIndex = dict[target - num] {
            return [lastIndex, i]
        }
        
        dict[num] = i
    }
    
    
    fatalError("No valid outputs")
}
print(twoSum(nums, target) )

//: [Next](@next)
