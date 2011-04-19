#import <Foundation/Foundation.h>

@interface NSString (Ruby)

- (NSArray *)split;
- (NSArray *)split:(NSString *)string, ...;
- (NSString *)chomp;

@end

@interface NSMutableString (Ruby)
- (NSString *)chomp:(BOOL)modify;

@end
