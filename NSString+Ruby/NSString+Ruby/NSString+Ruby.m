#import "NSString+Ruby.h"

@implementation NSString (Ruby)

- (NSArray *)split {
  return [self split:@" "];
}

- (NSArray *)split:(NSString *)string, ... {
  if ([string length] > 0) {
    va_list argumentList;
    va_start(argumentList, string);
    string = [[[NSString alloc] initWithFormat:string arguments:argumentList] autorelease];
  } else {
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:[self length]];
    
    for (int i = 0; i < [self length]; i++) {
      [result addObject:[NSString stringWithFormat:@"%C", [self characterAtIndex:i]]];
    }
    
    return result;
  }
  
  return [self componentsSeparatedByString:string];
}

- (NSString *)chomp {
  NSMutableString *string = [NSMutableString string];
  NSMutableArray *characters = [[self split:@""] mutableCopy];
  [characters removeObjectAtIndex:[characters count]-1];
  
  for (NSString *character in characters) {
    [string appendString:character];
  }

  return [NSString stringWithString:string];
}

@end

@implementation NSMutableString (Ruby)

- (NSString *)chomp:(BOOL)modify {
  [self setString:[self chomp]];
  return self;
}

@end
