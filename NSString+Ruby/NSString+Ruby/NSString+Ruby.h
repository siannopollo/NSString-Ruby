#import <Foundation/Foundation.h>

@interface NSString (Ruby)

- (NSArray *)split;
- (NSArray *)split:(NSString *)string, ...;
- (NSString *)chomp;
- (NSString *)chomp:(BOOL)modify;

@end
