//
//  SrcOption.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/23/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//

import Foundation

struct SrcOptions : Codable {
    let skip_abstract_paren : Int?
    let language : String?
    let is_mediawiki : Int?
    let src_info : String?
    let skip_icon : Int?
    let source_skip : String?
    let min_abstract_length : String?
    let directory : String?
    let skip_end : String?
    let is_fanon : Int?
    let skip_qr : String?
    let skip_abstract : Int?
    let is_wikipedia : Int?
    let skip_image_name : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case skip_abstract_paren = "skip_abstract_paren"
        case language = "language"
        case is_mediawiki = "is_mediawiki"
        case src_info = "src_info"
        case skip_icon = "skip_icon"
        case source_skip = "source_skip"
        case min_abstract_length = "min_abstract_length"
        case directory = "directory"
        case skip_end = "skip_end"
        case is_fanon = "is_fanon"
        case skip_qr = "skip_qr"
        case skip_abstract = "skip_abstract"
        case is_wikipedia = "is_wikipedia"
        case skip_image_name = "skip_image_name"
    }
    

    
}
