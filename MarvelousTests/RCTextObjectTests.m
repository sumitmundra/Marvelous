//
//  RCTextObjectTests.m
//  Marvelous
//
//  Copyright (c) 2014 Rock & Code [http://rock-n-code.com]
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import <XCTest/XCTest.h>

#import "RCTextObject.h"
#import "RCResponseKeys.h"

@interface RCTextObjectTests : XCTestCase

@end

@implementation RCTextObjectTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testInit
{
	RCTextObject *object = [[RCTextObject alloc] init];

	XCTAssertNil(object.type, @"\"%s\" is expecting the property 'type' to be NULL.", __PRETTY_FUNCTION__);
	XCTAssertNil(object.language, @"\"%s\" is expecting the property 'language' to be NULL.", __PRETTY_FUNCTION__);
	XCTAssertNil(object.text, @"\"%s\" is expecting the property 'text' to be NULL.", __PRETTY_FUNCTION__);
}

- (void)testInitWithDictionary
{
	NSDictionary *dictionary = @{RCResponseKeyType: @"TestType",
								 RCResponseKeyLanguage: @"TestLanguage",
								 RCResponseKeyText: @"TestText"};

	RCTextObject *object = [[RCTextObject alloc] initWithDictionary:dictionary];

	XCTAssertNotNil(object.type, @"\"%s\" is expecting the property 'type' to be not NULL.", __PRETTY_FUNCTION__);
	XCTAssertNotNil(object.language, @"\"%s\" is expecting the property 'language' to be not NULL.", __PRETTY_FUNCTION__);
	XCTAssertNotNil(object.text, @"\"%s\" is expecting the property 'text' to be not NULL.", __PRETTY_FUNCTION__);
}

- (void)testInitWithPartialDictionary
{
	NSDictionary *dictionary = @{RCResponseKeyType: @"TestType",
								 RCResponseKeyText: @"TestText"};

	RCTextObject *object = [[RCTextObject alloc] initWithDictionary:dictionary];

	XCTAssertNotNil(object.type, @"\"%s\" is expecting the property 'type' to be not NULL.", __PRETTY_FUNCTION__);
	XCTAssertNil(object.language, @"\"%s\" is expecting the property 'language' to be NULL.", __PRETTY_FUNCTION__);
	XCTAssertNotNil(object.text, @"\"%s\" is expecting the property 'text' to be not NULL.", __PRETTY_FUNCTION__);
}

- (void)testInitWithNil
{
	RCTextObject *object = [[RCTextObject alloc] initWithDictionary:nil];

	XCTAssertNil(object, @"\"%s\" is expecting the property 'object' to be NULL.", __PRETTY_FUNCTION__);
}

@end
