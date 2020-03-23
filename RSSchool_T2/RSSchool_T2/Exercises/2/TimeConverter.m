#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    
    int h = hours.intValue;
    int m = minutes.intValue;
    
    NSArray *wordsNums = @[@"zero", @"one", @"two", @"three", @"four",@"five", @"six", @"seven", @"eight", @"nine", @"ten", @"eleven", @"twelve", @"thirteen", @"fourteen", @"fifteen", @"sixteen", @"seventeen", @"eighteen", @"nineteen", @"twenty", @"twenty one", @"twenty two", @"twenty three", @"twenty four", @"twenty five", @"twenty six", @"twenty seven", @"twenty eight", @"twenty nine"];
    
    if (m < 0 || m > 60 || h < 0 || h > 12) {
        return @"";
    }
    
    if (m == 0) {
        return [NSString stringWithFormat:@"%@ o' clock", wordsNums[h]];
    } else if (m == 30) {
        return [NSString stringWithFormat:@"half past %@", wordsNums[h]];
    } else if (m == 15) {
        return [NSString stringWithFormat:@"quarter past %@", wordsNums[h]];
    } else if (m < 30) {
        return [NSString stringWithFormat:@"%@ minutes past %@", wordsNums[m], wordsNums[h]];
    } else if (m == 45) {
        return [NSString stringWithFormat:@"quarter to %@", wordsNums[h + 1]];
    } else if (m > 30) {
        int m1 = 60 - m;
        return [NSString stringWithFormat:@"%@ minutes to %@", wordsNums[m1], wordsNums[h + 1]];
    }
    return @"";
}
@end
