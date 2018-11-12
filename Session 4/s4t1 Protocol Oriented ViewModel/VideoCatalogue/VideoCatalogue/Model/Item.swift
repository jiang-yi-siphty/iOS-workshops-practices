//
//  item.swift
//  VideoCatalogue
//
//  Created by Yi JIANG on 27/10/18.
//  Copyright © 2018 Siphty. All rights reserved.
//

import Foundation

struct Item: Codable {
    let title: String?
    let year: Int?
    let description: String?
    let images: Images?
    
    struct Images: Codable {
        let portrait: String?
        let landscape: String?
        
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
        images = try container.decode(Images.self, forKey: .images)
    }
}
