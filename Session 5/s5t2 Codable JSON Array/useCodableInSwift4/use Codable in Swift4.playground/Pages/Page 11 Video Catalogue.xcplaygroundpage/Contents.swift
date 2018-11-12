//: [Previous](@previous)

import Foundation

var responseJson = """
[
{
"category": "Movies",
"items": [
{
"title": "Smallfoot",
"year": 2018,
"description": "A bright young yeti finds something he thought didn't exist—a human.",
"images": {
"portrait": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/smallfoot-portrait.jpg",
"landscape": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/smallfoot-landscape.jpg"
}
},
{
"title": "Whiplash",
"year": 2014,
"description": "Under the direction of a ruthless instructor, a talented young drummer begins to pursue perfection at any cost, even his humanity.",
"images": {
"portrait": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/whiplash-portrait.jpg",
"landscape": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/whiplash-landscape.jpg"
}
}
]
},
{
"category": "TV Shows",
"items": [
{
"title": "Game of Thrones",
"year": 2017,
"description": "Nine noble families fight for control over the mythical lands of Westeros.",
"images": {
"portrait": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/game-of-thrones-portrait.jpg",
"landscape": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/game-of-thrones-landscape.jpg"
}
},
{
"title": "Twin Peaks",
"year": 2017,
"description": "Picks up 25 years after the inhabitants of a quaint northwestern town are stunned when their homecoming queen is murdered.",
"images": {
"portrait": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/twin-peaks-portrait.jpg",
"landscape": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/twin-peaks-landscape.jpg"
}
}
]
},
{
"category": "Features",
"items": [
{
"title": "Smallfoot",
"year": 2018,
"description": "A bright young yeti finds something he thought didn't exist—a human.",
"images": {
"portrait": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/smallfoot-portrait.jpg",
"landscape": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/smallfoot-landscape.jpg"
}
},
{
"title": "Johnny English Strikes Again",
"year": 2018,
"description": "Disaster strikes when a criminal mastermind reveals the identities of all active undercover agents in Britain.",
"images": {
"portrait": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/english-portrait.jpg",
"landscape": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/english-landscape.jpg"
}
},
{
"title": "Twin Peaks",
"year": 2017,
"description": "Picks up 25 years after the inhabitants of a quaint northwestern town are stunned when their homecoming queen is murdered.",
"images": {
"portrait": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/twin-peaks-portrait.jpg",
"landscape": "https://s3-ap-southeast-2.amazonaws.com/video-catalogue/images/twin-peaks-landscape.jpg"
}
}
]
}
]
"""


    struct Catalogue: Codable {
        let category: String
        let items: [Item]
        
        struct Item: Codable {
            let title: String
            let year: Int
            let description: String
            let images: Image
            
            struct Image: Codable {
                let portrait: String
                let landscape: String
                
                init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    portrait = try container.decode(String.self, forKey: .portrait)
                    landscape = try container.decode(String.self, forKey: .landscape)
                }
            }
            
            init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                title = try container.decode(String.self, forKey: .title)
                year = try container.decode(Int.self, forKey: .year)
                description = try container.decode(String.self, forKey: .description)
                images = try container.decode(Image.self, forKey: .images)
            }
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            category = try container.decode(String.self, forKey: .category)
            items = try container.decode([Item].self, forKey: .items)
        }
    }



func encode<T>(of model: T) throws where T: Codable {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    let encodedData = try encoder.encode(model)
    print(String(data: encodedData, encoding: .utf8)!)
}
func decode<T>(of jsonString: String, type: T.Type) throws -> T where T: Codable {
    let data = jsonString.data(using: .utf8)!
    let decoder = JSONDecoder()
    let model = try! decoder.decode(T.self, from: data)
    return model
}

do {
    let catalogue = try decode(of: responseJson, type: [Catalogue].self)
    dump(catalogue)
    print("🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨")
    try! encode(of: catalogue)
} catch let err {
    print(err)
}
