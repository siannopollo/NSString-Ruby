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

@end
