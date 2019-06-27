//
//  RootClass.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/23/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//


import Foundation
struct RootClass : Codable {
    let type : String?
    let imageWidth : Int?
    let relatedTopics : [RelatedTopics]?
    let answer : String?
    let definitionSource : String?
    let abstractURL : String?
    let meta : Meta?
    let answerType : String?
    let abstractSource : String?
    let imageIsLogo : Int?
    let image : String?
    let heading : String?
    let definitionURL : String?
    let definition : String?
    let infobox : String?
    let redirect : String?
    let results : [String]?
    let abstract : String?
    let imageHeight : Int?
    let entity : String?
    let abstractText : String?

    enum CodingKeys: String, CodingKey {

        case type = "Type"
        case imageWidth = "ImageWidth"
        case relatedTopics = "RelatedTopics"
        case answer = "Answer"
        case definitionSource = "DefinitionSource"
        case abstractURL = "AbstractURL"
        case meta = "meta"
        case answerType = "AnswerType"
        case abstractSource = "AbstractSource"
        case imageIsLogo = "ImageIsLogo"
        case image = "Image"
        case heading = "Heading"
        case definitionURL = "DefinitionURL"
        case definition = "Definition"
        case infobox = "Infobox"
        case redirect = "Redirect"
        case results = "Results"
        case abstract = "Abstract"
        case imageHeight = "ImageHeight"
        case entity = "Entity"
        case abstractText = "AbstractText"
    }


}
