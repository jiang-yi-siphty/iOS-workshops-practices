
// # Pattern Match

// ## The One-Off Match
enum AppleDevice {
    case iPad(String)
    case iPhone
    case AppleTV
    case iMac
    case MacbookPro
    case MacMini
    case MacPro
    case iPadPro
    case AirPods
    
}

let iPad = AppleDevice.iPad("Super awesome!")

if case let .iPad(value) = iPad {
    print(value)
}


enum Media {
    case book(title: String, author: String, year: Int)
    case movie(title: String, director: String, year: Int)
    case website(urlString: String)
}

let m = Media.movie(title: "Captain America: Civil War", director: "Russo Brothers", year: 2016)

if case let Media.movie(title, _, _) = m {
    print("This is a movie named \(title)")
}

let b = Media.book(title: "App Architecture", author: "Unknown Author", year: 2018)
if case let Media.movie(title, _, _) = b {
    print("This is a movie named: \(title)")
    print("This is a movie named: \(title)")
} else if case let Media.book(v1, v2, v3) = b {
    print("This is a book named: \(v1)  Author: \(v2)  Year: \(v3)")
}
