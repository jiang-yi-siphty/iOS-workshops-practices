import UIKit


class Father {
    let surname: String
    var pocketMoney: Int = 0
    
    init(_ name: String, hasMoney pocketMoney: Int) {
        self.surname = name
        self.pocketMoney = pocketMoney
    }
}

extension Father {
    @objc func earnMoney(){
        pocketMoney += 1000
    }
}

let fatherA = Father("Yi", hasMoney: 50)
fatherA.earnMoney()
print("\(fatherA.surname) has $\(fatherA.pocketMoney) in the pocket")


class Child: Father {
    let nickName: String? = nil
    
    override func earnMoney() {
        pocketMoney += 10
    }
}

let childA = Child("April", hasMoney: 0)
childA.earnMoney()
print("\(childA.surname) has $\(childA.pocketMoney) in the pocket")
