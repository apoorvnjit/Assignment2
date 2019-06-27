//
//  Icon.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/23/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//

import Foundation
struct Icon : Codable {
    let height : String?
    let uRL : String?
    let width : String?
    
    enum CodingKeys: String, CodingKey {
        
        case height = "Height"
        case uRL = "URL"
        case width = "Width"
    }
    

}
