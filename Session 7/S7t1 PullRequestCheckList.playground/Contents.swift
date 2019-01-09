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

// Bad: DRY
if isPositionCorrect {
    updateUI("Position Correct", isPositionCorrect)
} else {
    updateUI("Position InCorrect", isPositionCorrect)
}

//: **Use early exit**

// Good: 
let message = isPositionCorrect ? "Position Correct" : "Position InCorrect"
updateUI(message, isPositionCorrect)


// Hard coding string

//: Logic

//: Access Right

//: Coding style


