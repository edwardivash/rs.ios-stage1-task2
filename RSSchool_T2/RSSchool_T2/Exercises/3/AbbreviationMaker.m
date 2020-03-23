#import "AbbreviationMaker.h"

@implementation AbbreviationMaker
// Complete the abbreviation function below.
- (NSString *) abbreviationFromA:(NSString *)a toB:(NSString *)b {
    
    NSMutableString *mutableA = [NSMutableString stringWithString:[a uppercaseString]];
    NSMutableString *result = [[NSMutableString alloc]init];
    
    for (int i = 0; i < [mutableA length]; i++) {
        for (int j = 0; j < [b length]; j++) {
            if ([mutableA characterAtIndex:i] == [b characterAtIndex:j]) {
                [result appendFormat:@"%c", [mutableA characterAtIndex:i]];
            }
        }
    }
    return [result isEqualToString:b] ? @"YES":@"NO";
}

@end
