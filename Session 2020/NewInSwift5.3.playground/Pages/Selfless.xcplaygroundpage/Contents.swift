import UIKit

class Selfless {
    var theVar = 0
    func waitTwoSeconds() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [self] in
            //🚨 Here is no 'self.' prefix
            theVar = 100
            print("After the end of waiting: \(theVar)")
        }  
        print("Before the end of waiting: \(theVar)")
    }
}

var exp = Selfless()
exp.waitTwoSeconds()

