#import <Foundation/Foundation.h>

@interface NSString (Ruby)

- (NSArray *)split;
- (NSArray *)split:(NSString *)string, ...;
@end
