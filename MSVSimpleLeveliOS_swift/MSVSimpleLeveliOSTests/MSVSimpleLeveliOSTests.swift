//
//  MSVSimpleLeveliOSTests.m
//  MSVSimpleLeveliOSTests
//
//  Created by Serge Moskalenko on 20.09.16.
//  Copyright © 2016 Serge Moskalenko. All rights reserved.
//
import XCTest
class MSVSimpleLeveliOSTests: XCTestCase {


    func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testDegForRotation() {
        var motions = Motions()
        XCTAssertEqual(1, motions.deg(forRotation: -6.255106), "test deg 1")
        XCTAssertEqual(50, motions.deg(forRotation: -5.404160), "test deg 50")
        XCTAssertEqual(300, motions.deg(forRotation: -1.037265), "test deg 300")
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock({() -> Void in
            // Put the code you want to measure the time of here.
        })
    }
}