//
//  Maintainer.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/23/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//

import Foundation

struct Maintainer : Codable {
    let github : String?
    
    enum CodingKeys: String, CodingKey {
        
        case github = "github"
    }
    
}
