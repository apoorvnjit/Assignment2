//
//  ComcastTestTests.swift
//  ComcastTestTests
//
//  Created by Apoorva Reed(Personal) on 6/23/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//

import XCTest
@testable import Wire

class ComcastTestTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCharacterViewModel() {
        let icon = Icon(height: "21", uRL: nil, width: "32")
        let character = RelatedTopics(icon: icon, text: "adam- adam is a cartoon character", result: "adam- adam is a cartoon character", firstURL: nil)
        let characterViewModel = CharacterViewModel(relatedTopics: character)
        XCTAssertEqual(characterViewModel.name, "adam")
        XCTAssertEqual(characterViewModel.iconUrl, "NA")
    }



    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
