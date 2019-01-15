import UIKit
/*:
 ## Make Some Constants
 */
//: ### 1. Normal constant  
//: *Define:*
let kBaseURL = NSURL(string: "http://www.example.com/")

//: *Usage:*
print(kBaseURL)

//: ### 2. Struct constant  
//: *Define:*
struct StructConstant {
    static let Name = "Yi"
    static let Address = "secret"
    static let Phone = "N/A"
    static let Mobile = "0433092885"
}

//: *Usage:*
print(StructConstant.Name)

//: ### 3. Normal enum constants
//: *Define:*
enum EnumConstants {
    static let float: CGFloat = 80 
    static let string = "Constant String"
    static let name = "Yi"
    static let address = "secret"
    static let phone = "N/A"
    static let mobile = "0433092885"
}

enum ConstantWithSingleType: String {
    case stringOne = "String one"
    case stringTwo = "String Two"
    case stringThree = "String Three"
}

//: *Usage:*
print(Constants.float)
print(ConstantWithSingleType.stringOne.rawValue)

//: ### 4. Default enum constants
//: *Define:*
enum TotalAmount {
    static let `default`: Float = 2000.0
}

enum RewardsTotalAmount {
    static let `default`: Float = 2000.0
}
//: *Usage*
print(TotalAmount.default)


//: ### 5. Extension constants
//: *Define:*
fileprivate extension String {
    static let constantOne = NSLocalizedString("constant one", comment: "")
    static let constantTwo = NSLocalizedString("constant two", comment: "")

}

//: *Usage:*
func iNeedStringParam(_ string: String) {
    print(string)
}

iNeedStringParam(.constantOne)
iNeedStringParam(.constantTwo)
