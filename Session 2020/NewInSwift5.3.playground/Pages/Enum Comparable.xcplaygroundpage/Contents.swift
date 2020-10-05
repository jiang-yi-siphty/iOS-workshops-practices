//: [Previous](@previous)
import fun

enum PlayerRank: Comparable {
    case bronze
    case silver
    case gold
    case platinum
    case diamond
}

let minimumRankForMatch: PlayerRank = .gold

func determineQualifation(for rank: PlayerRank) {
    if rank >= minimumRankForMatch {
        print("This player qualifies")
        
    } else { 
        print("Learn to play, noob")
    }
}

determineQualifation(for: .silver)
determineQualifation(for: .diamond)

enum NumberWord: Comparable {
    case one 
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ten
}

print("Is one bigger than ten: \(NumberWord.one > NumberWord.ten)")
print("Is five smaller than eight: \(NumberWord.five < NumberWord.eight)")

//: [Next](@next)
