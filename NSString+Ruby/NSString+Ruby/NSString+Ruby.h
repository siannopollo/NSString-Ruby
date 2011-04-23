#import <Foundation/Foundation.h>

@interface NSString (Ruby)

- (NSArray *)split;
- (NSArray *)split:(NSString *)string, ...;
- (NSString *)chomp;
- (NSString *)capitalize;

@end

@interface NSMutableString (Ruby)
- (NSString *)chomp:(BOOL)modify;
- (NSString *)capitalize:(BOOL)modify;

@end
