//
//  Meta.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/23/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//

import Foundation
struct Meta : Codable {
    let created_date : String?
    let topic : [String]?
    let src_name : String?
    let status : String?
    let src_options : SrcOptions?
    let producer : String?
    let dev_milestone : String?
    let perl_module : String?
    let dev_date : String?
    let attribution : String?
    let maintainer : Maintainer?
    let blockgroup : String?
    let example_query : String?
    let js_callback_name : String?
    let is_stackexchange : String?
    let description : String?
    let name : String?
    let designer : String?
    let signal_from : String?
    let repo : String?
    let live_date : String?
    let developer : [Developer]?
    let src_id : Int?
    let src_domain : String?
    let tab : String?
    let unsafe : Int?
    let src_url : String?
    let id : String?
    let production_state : String?
    
    enum CodingKeys: String, CodingKey {
        
        case created_date = "created_date"
        case topic = "topic"
        case src_name = "src_name"
        case status = "status"
        case src_options = "src_options"
        case producer = "producer"
        case dev_milestone = "dev_milestone"
        case perl_module = "perl_module"
        case dev_date = "dev_date"
        case attribution = "attribution"
        case maintainer = "maintainer"
        case blockgroup = "blockgroup"
        case example_query = "example_query"
        case js_callback_name = "js_callback_name"
        case is_stackexchange = "is_stackexchange"
        case description = "description"
        case name = "name"
        case designer = "designer"
        case signal_from = "signal_from"
        case repo = "repo"
        case live_date = "live_date"
        case developer = "developer"
        case src_id = "src_id"
        case src_domain = "src_domain"
        case tab = "tab"
        case unsafe = "unsafe"
        case src_url = "src_url"
        case id = "id"
        case production_state = "production_state"
    }
    

    
}
