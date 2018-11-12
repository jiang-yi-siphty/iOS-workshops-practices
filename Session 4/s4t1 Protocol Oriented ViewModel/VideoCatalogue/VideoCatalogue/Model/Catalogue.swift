//
//  Catalogue.swift
//  VideoCatalogue
//
//  Created by Yi JIANG on 25/10/18.
//  Copyright © 2018 Siphty. All rights reserved.
//

import Foundation


struct Catalogue: Codable {
    let category: String?
    let items: [Item]?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        category = try container.decode(String.self, forKey: .category)
        items = try container.decode([Item].self, forKey: .items)
    }
}
