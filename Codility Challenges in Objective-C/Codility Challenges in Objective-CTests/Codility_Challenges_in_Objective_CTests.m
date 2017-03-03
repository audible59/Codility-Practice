//
//  Codility_Challenges_in_Objective_CTests.m
//  Codility Challenges in Objective-CTests
//
//  Created by Kevin E. Rafferty II on 3/2/17.
//  Copyright © 2017 Quiver Coding. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "ViewController.h"

@interface ViewController (Testing)

+ (int)binaryGap:(int)integer;
+ (int)oddOccurrencesInArray:(NSArray *)array;

@end

@interface Codility_Challenges_in_Objective_CTests : XCTestCase

@end

@implementation Codility_Challenges_in_Objective_CTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

#pragma mark - Binary Gap Unit Tests -

- (void)testBinaryGapWithNine {
    XCTAssertEqual(2, [ViewController binaryGap:9], @"We expected the Binary Gap to be 2");
}

- (void)testBinaryGapWithFifteen {
    XCTAssertEqual(0, [ViewController binaryGap:15], @"We expected the Binary Gap to be 0");
}

- (void)testBinaryGapWithTwenty {
    XCTAssertEqual(1, [ViewController binaryGap:20], @"We expected the Binary Gap to be 1");
}

- (void)testBinaryGapWithFiveHundredTwentyNine {
    XCTAssertEqual(4, [ViewController binaryGap:529], @"We expected the Binary Gap to be 4");
}

- (void)testBinaryGapWithZeroEdgeCase {
    XCTAssertEqual(0, [ViewController binaryGap:0], @"We expected the Binary Gap to be 0");
}

- (void)testBinaryGapWithNegativeEdgeCase {
    XCTAssertEqual(0, [ViewController binaryGap:-1], @"We expected the Binary Gap to be 0");
}

- (void)testBinaryGapWithLargeGapEdgeCase {
    XCTAssertEqual(28, [ViewController binaryGap:1610612737], @"We expected the Binary Gap to be 28");
}

#pragma mark - Odd Occurrence Within the Array Unit Tests -

- (void)testOddOccurrencesWithinTheArrayWithStandardCase {
    NSArray *testArray = @[@9, @3, @9, @3, @9, @7, @9];
    
    XCTAssertEqual(7, [ViewController oddOccurrencesInArray:testArray], @"We expected the Odd Occurrence to be 7");
}

- (void)testOddOccurrencesWithinTheArrayWithEmptyArrayCase {
    NSArray *testArray = @[];
    
    XCTAssertEqual(-1, [ViewController oddOccurrencesInArray:testArray], @"We expected the Odd Occurrence to be -1");
}

- (void)testOddOccurrencesWithinTheArrayWithNilArrayCase {
    NSArray *testArray = nil;
    
    XCTAssertEqual(-1, [ViewController oddOccurrencesInArray:testArray], @"We expected the Odd Occurrence to be -1");
}

@end
