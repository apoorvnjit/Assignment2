//
//  Developer.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/23/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//


import Foundation

struct Developer : Codable {
    let url : String?
    let name : String?
    let type : String?
    
    enum CodingKeys: String, CodingKey {
        
        case url = "url"
        case name = "name"
        case type = "type"
    }
    

    
}

