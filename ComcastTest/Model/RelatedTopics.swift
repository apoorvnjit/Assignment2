//
//  RelatedTopic.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/23/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//

import Foundation

struct RelatedTopics : Codable {
    let icon : Icon?
    let text : String?
    let result : String?
    let firstURL : String?
    
    enum CodingKeys: String, CodingKey {
        
        case icon = "Icon"
        case text = "Text"
        case result = "Result"
        case firstURL = "FirstURL"
    }
    

    
}
