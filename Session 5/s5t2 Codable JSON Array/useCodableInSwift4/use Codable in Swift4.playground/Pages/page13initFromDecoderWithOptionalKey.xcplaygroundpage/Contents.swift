//: [Previous](@previous)

import Foundation

var json = """
{
"HomePageModules": [

{
"ModuleName": "Order",
"Visible": true
},
{
"ModuleName": "Cart",
"Visible": true
},
{
"ModuleName": "Banner",
"Visible": true
},
{
"ModuleName": "Favourites",
"Visible": true
},
{
"ModuleName": "Rewards",
"Visible": false
},
{
"ModuleName": "Account",
"Visible": true
},
{
"ModuleName": "Recent",
"Visible": true
},
{
"ModuleName": "ProductPromos",
"Visible": true,
"Contents": [
{
"Title": "Wine",
"Promotions": [
{
"Title": "Top Styles",
"LinkType": "TwoColumnLink",
"Links": [
{
"Title": "Champagne",
"Id": "96",
"Action": "Browse"
},
{
"Title": "Chardonnay",
"Id": "72",
"Action": "Browse"
},
{
"Title": "Pinot Noir",
"Id": "60",
"Action": "Browse"
},
{
"Title": "Shiraz",
"Id": "56",
"Action": "Browse"
}
]
},
{
"LinkType": "SingleLineLink",
"Links": [
{
"Title": "Wine Specials",
"Id": "22963",
"Action": "Product Group"
}
]
},
{
"Title": "Wine Specials",
"LinkType": "Carousel",
"Links": [
{
"Id": "22963",
"Action": "Product Group"
}
]
}
]
},
{
"Title": "Beer",
"Promotions": [
{
"Title": "Top Styles",
"LinkType": "TwoColumnLink",
"Links": [
{
"Title": "Lager",
"Id": "1015",
"Action": "Browse"
},
{
"Title": "Pale Ale",
"Id": "1014",
"Action": "Browse"
},
{
"Title": "Stout",
"Id": "1010",
"Action": "Browse"
},
{
"Title": "Australian Beer",
"Id": "125",
"Action": "Browse"
},
{
"Title": "Craft Beer",
"Id": "123",
"Action": "Browse"
},
{
"Title": "Australian Beer - Repeat",
"Id": "125",
"Action": "Browse"
},
{
"Title": "150 Lashes",
"Id": "705049",
"Action": "Product"
}
]
},
{
"LinkType": "SingleLineLink",
"Links": [
{
"Title": "Cider Specials",
"Id": "60799",
"Action": "Product Group"
}
]
},
{
"Title": "Beer Specials",
"LinkType": "Carousel",
"Links": [
{
"Id": "1015",
"Action": "Browse"
}
]
}
]
}
]
},
{
"ModuleName": "GeneralPromos",
"Visible": true,
"Contents": [
{
"Title": "Looking for inspiration?",
"Promotions": [
{
"Title": "Award winners",
"Description": "Shop drinks thats experts love.",
"ImageURL": "imagelink1",
"Links": [
{
"Title": "Champagne",
"Id": "96",
"Action": "Browse"
},
{
"Title": "Chardonnay",
"Id": "72",
"Action": "Browse"
},
{
"Title": "Pinot Noir",
"Id": "60",
"Action": "Browse"
}
]
},
{
"Title": "New Arrivals",
"Description": "Try them before everybody else.",
"ImageURL": "imagelink2",
"Links": [
{
"Title": "Champagne",
"Id": "96",
"Action": "Browse"
},
{
"Title": "Chardonnay",
"Id": "72",
"Action": "Browse"
},
{
"Title": "Pinot Noir",
"Id": "60",
"Action": "Browse"
},
{
"Title": "Pinot Noir - Repeat",
"Id": "60",
"Action": "Browse"
}
]
}
]
}
]
}
]
}
"""

struct HomepageContent: Codable {
  
  var homepageModules: [HomepageModule]
  
  enum CodingKeys: String, CodingKey {
    case homepageModules = "HomePageModules"
  }
}

struct HomepageModule: Codable {
  var moduleName: ModuleName
  var visible: Bool
  var contents: [Contents]?
  
  enum CodingKeys: String, CodingKey {
    case moduleName = "ModuleName"
    case visible = "Visible"
    case contents = "Contents"
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    let moduleNameString = try container.decode(String.self, forKey: .moduleName)
    moduleName = ModuleName(rawValue: moduleNameString) ?? .unknown
    visible = try container.decode(Bool.self, forKey: .visible)
    contents = try container.decodeIfPresent([Contents].self, forKey: .contents)
  }
  
  struct Contents: Codable {
    let title: String?
    let imageUrl: String?
    let localImageName: String?
    let action: String?
    let id: String?
    
    enum CodingKeys: String, CodingKey {
      case title = "Title"
      case imageUrl = "ImageURL"
      case localImageName = "LocalImageName"
      case action = "Action"
      case id = "Id"
    }
  }
}

enum ModuleName: String, Codable {
  case account = "Account"
  case currentOrder = "CurrentOrder"
  case previousPurchase = "PreviousPurchase"
  case cart = "Cart"
  case banner = "Banner"
  case favourites = "Favourites"
  case rewards = "Rewards"
  case specialsByCategory = "SpecialsByCategory"
  case order = "Order"
  case recent = "Recent"
  case productPromos = "ProductPromos"
  case generalPromos = "GeneralPromos"
  case unknown = "unknown"
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



//==============================



let sky = try? decode(of: json, type: HomepageContent.self)
print("----------------------------------------\n")
dump(sky)
