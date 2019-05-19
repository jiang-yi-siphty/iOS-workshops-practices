//: [Previous](@previous)
class skadf {
    var title: String = "" {
        willSet {
            print("将标题从 \(title) 设置到 \(newValue)")
        }
        didSet {
            print("已将标题从 \(oldValue) 设置到 \(title)]\n")
            title = title + "🔓"
        }
    }
    
    
    var a: Int = 0 {
        willSet{
            print("will set")
        }
        didSet {
            print("did set")
        }
    }
    
    func setA() {
        a = 1
        a = 2
    }
    
    
}

let sss = skadf()
sss.setA()
sss.title = "1"


sss.title = "2"
sss.title = "3"
//: [Next](@next)
