
import Foundation

enum Foo: String {
    case one = "3"
    case two = "2"
    case three = "1"
//    case four(value: Int)
    
    var str: String {
        switch self {
//        case .four://(let value):
//            return "Four"
        default:
            return "default"
        }
    }
}

Foo.two.rawValue

//Foo.four(value: 6).str

