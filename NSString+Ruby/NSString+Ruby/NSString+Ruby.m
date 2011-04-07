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
  }
  
  return [self componentsSeparatedByString:string];
}

@end
