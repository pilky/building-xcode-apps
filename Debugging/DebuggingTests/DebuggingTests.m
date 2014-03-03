//
//  DebuggingTests.m
//  DebuggingTests
//
//  Created by Martin Pilkington on 27/02/2014.
//
//

#import <XCTest/XCTest.h>

@interface DebuggingTests : XCTestCase

@end

@implementation DebuggingTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end
