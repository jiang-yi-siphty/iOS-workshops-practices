#What’s new in Swift 4.2

###i) random()，而非使用arc4random 或者GameplayKit
			let randomInt = Int.random(in: 1..<5)
			let randomFloat = Float.random(in: 1..<10)
			let randomDouble = Double.random(in: 1...100)
			let randomCGFloat = CGFloat.random(in: 1...1000)
			let randomBool = Bool.random()
			
###ii) shuffle() , shuffled()

			shuffle() 把array自身洗牌
			shuffled() 基于array产生一个洗过牌的array
			
###iii) randomElement()

			从array中随机抽取一个element。空array返回nil
			
###iv) 更加简便安全的哈希 （还没看懂， 需要实验一下： 如果每次hash的值都不同， 何必hash？）  


###v) allSatisfy()用来判断array中的elements是否都满足条件  


###vi) removeAll(where:)用来直接删除array中所有满足条件的element (In-place)



###vii) toggle() 用来切换boolean的真假值



###viii) 实施了CaseIterable protocol的enum可以用 .allCases导出array。



###ix)  #warning("Some message") and #error("Some message") 在编译器层面来提醒。 


如同 // TODO: -  ，// FIXME: ， // MARK:  

###x) @dynamicMemberLookup 用来。。。。

我也不知道 （https://www.jianshu.com/p/13e6aa1ad584）




###xi) Enhanced conditional conformances