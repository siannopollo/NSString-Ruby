//
//  NSString_RubyTests.m
//  NSString+RubyTests
//
//  Created by steve on 4/6/11.
//  Copyright 2011 Steve Iannopollo. All rights reserved.
//

#import "NSString_RubyTests.h"

@implementation NSString_RubyTests

- (void)setUp {
  [super setUp];
  
  string = [@"" mutableCopy];
}

- (void)tearDown {
  // Tear-down code here.
  
  [super tearDown];
}

- (void)testSplit {
  STAssertTrue([string respondsToSelector:@selector(split)], @"");
  [string setString:@"this is the string"];
  NSArray *components = [NSArray arrayWithObjects:@"this", @"is", @"the", @"string", nil];
  NSArray *splitComponents = [string split];
  
  STAssertTrue([splitComponents isEqual:components], @"split result is %@", splitComponents);
}

- (void)testSplitWithArguments {
  STAssertTrue([string respondsToSelector:@selector(split:)], @"");
  [string setString:@"this is the string"];
  NSArray *components = [NSArray arrayWithObjects:@"th", @"s ", @"s the str", @"ng", nil];
  NSArray *splitComponents = [string split:@"i"];
  
  STAssertTrue([splitComponents isEqual:components], @"split result is %@", splitComponents);
}

- (void)testSplitWithFormattedArgs {
  STAssertTrue([string respondsToSelector:@selector(split:)], @"");
  [string setString:@"this is the string"];
  NSArray *components = [NSArray arrayWithObjects:@"this ", @" string", nil];
  NSArray *splitComponents = [string split:@"is %@", @"the"];
  
  STAssertTrue([splitComponents isEqual:components], @"split result is %@", splitComponents);
}

- (void)testSplitWithEmptyString {
  [string setString:@"string"];
  NSArray *components = [NSArray arrayWithObjects:@"s", @"t", @"r", @"i", @"n", @"g", nil];
  NSArray *splitComponents = [string split:@""];
  STAssertTrue([splitComponents isEqual:components], @"split result is %@", splitComponents);
}

- (void)testChomp {
  STAssertTrue([string respondsToSelector:@selector(chomp)], @"");
  [string setString:@"this is the string\n"];
  STAssertTrue([[string chomp] isEqualToString:@"this is the string"], @"chomp result is %@", [string chomp]);
}

- (void)testModifyChomp {
  STAssertTrue([string respondsToSelector:@selector(chomp:)], @"");
  [string setString:@"YAY"];
  [string chomp:YES];
  STAssertTrue([string isEqualToString:@"YA"], @"your string is %@", string);
}

@end
