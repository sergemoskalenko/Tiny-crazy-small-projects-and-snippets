//
//  MSVSimpleLeveliOSTests.m
//  MSVSimpleLeveliOSTests
//
//  Created by Serge Moskalenko on 20.09.16.
//  Copyright © 2016 Serge Moskalenko. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Motions.h"

@interface MSVSimpleLeveliOSTests : XCTestCase

@end

@implementation MSVSimpleLeveliOSTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDegForRotation
{
    
    Motions* motions = [Motions new];
    
    XCTAssertEqual(1, [motions degForRotation:-6.255106], "test deg 1");

    XCTAssertEqual(50, [motions degForRotation:-5.404160], "test deg 50");

    XCTAssertEqual(300, [motions degForRotation:-1.037265], "test deg 300");

}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
