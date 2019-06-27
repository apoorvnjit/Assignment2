//
//  Config.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/26/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//


import UIKit
enum ComcastAppVersion {
    
    case Simpsons
    case Wire
    
    func apiPath() -> String {
        switch self {
        case .Simpsons: return "http://api.duckduckgo.com/?q=simpsons+characters&format=json"
        case .Wire: return "http://api.duckduckgo.com/?q=the+wire+characters&format=json"
        }
    }
}

enum Color {
    static let primaryColor = UIColor.white
    static let secondaryColor = UIColor.cyan    
    static let tertiaryColor = #colorLiteral(red: 0.22, green: 0.58, blue: 0.29, alpha: 1.0)
    static let primaryFontColor = UIColor.black
    static let secondaryFontColor = UIColor.white
}




