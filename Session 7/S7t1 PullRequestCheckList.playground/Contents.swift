/*:
 
 ## S7T1: Code Review Checklist
 
 #### Reference:
 * [The Checklist of my code review: Sameh Mabrouk](https://medium.com/@same7mabrouk/the-checklist-of-my-code-review-18cc6f6fb5b3)
 
 #### Legend:
 ❌: Wrong 
 ✅: Correct
 
 👎🏼: Not good
 👍: Better
 
 💪: Strong
 🤮: Weak
 
 
    
 
 */

import UIKit


//: ## Generic  
//: **DRY (Don't Repeat Yourself)**
func updateUI(_ title: String, _ value: Bool) {
    print(title + " : \(value)")
}
var isPositionCorrect: Bool  = {
    return Bool.random()
}()

// 👎🏼: DRY
if isPositionCorrect {
    updateUI("Position Correct", isPositionCorrect)
} else {
    updateUI("Position InCorrect", isPositionCorrect)
}

//: **Use early exit**

// 👍: 
let message = isPositionCorrect ? "Position Correct" : "Position InCorrect"
updateUI(message, isPositionCorrect)

//: Use early exit
// Use "guard let", "if let" as early as possible

// Use array lazy functional programming.
func fibonacci(_ n: Int) -> Int {
    guard n != 0, n != 1 else { return n }
    return fibonacci(n - 1) + fibonacci(n - 2)
}
let lotsOfNumbers = Array(1...1_000_000)
let result = lotsOfNumbers.lazy.map{return fibonacci($0)}
let combinedByFiveRule = result[20] 
print("combinedByFiveRule: \(combinedByFiveRule)")

//: Hard coding string

//: Logic

//: Access Right

//: Coding style


