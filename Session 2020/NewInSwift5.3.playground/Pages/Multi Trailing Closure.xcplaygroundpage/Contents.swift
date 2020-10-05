//: [Previous](@previous)

import Foundation
class Server {}
class Picture {}
func download(_ fileName: String, from: Server) -> Picture? {
    return nil
}
let someServer: Server? = nil


func loadPicture(from server: Server?, 
                 completion: (Picture) -> Void, 
                 onFailure: () -> Void,
                 exceptions: () -> Void) {
    guard let server = server else { 
        exceptions()
        return 
    }
    if let picture = download("photo.jpg", from: server) {
        completion(picture)
    } else {
        onFailure()
    }
}

loadPicture(from: someServer) { picture in
    print(picture)
} onFailure: {
    print("Couldn't download the next picture.")
} exceptions: {
    print("Server has exception")
}

//: [Next](@next)
