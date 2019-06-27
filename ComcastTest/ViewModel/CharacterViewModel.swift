//
//  RelatedViewModel.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/24/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//

import Foundation

struct CharacterViewModel{
    
    let name: String
    let description: String
    let iconUrl: String
    
    
    init(relatedTopics: RelatedTopics){
        self.name = (relatedTopics.text?.components(separatedBy: "-")[0])!
        self.description = relatedTopics.text!
        self.iconUrl = relatedTopics.icon?.uRL ?? "NA"
        
    }
}
