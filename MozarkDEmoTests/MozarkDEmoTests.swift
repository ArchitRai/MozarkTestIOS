//
//  MozarkDEmoTests.swift
//  MozarkDEmoTests
//
//  Created by Archit Rai Saxena on 21/09/20.
//  Copyright © 2020 Archit. All rights reserved.
//

import XCTest
struct ViewConditions {
    let views: [UIView]

    var hasCrossView: Bool {
        return false
    }
}
@testable import MozarkDEmo

class MozarkDEmoTests: XCTestCase {
    func testViewValidations() {
        let viewCon = ViewConditions.init(views: [UIView(),UIView()])
        XCTAssert(viewCon.views == [nil])
        XCTAssertTrue(viewCon.views == [nil])
        XCTAssertEqual(viewCon.views == [nil])
    }
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
