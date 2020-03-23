#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"d MMMM, EEEE";
    formatter.locale = [NSLocale localeWithLocaleIdentifier:@"ru_RU"];
    
    NSDateComponents *components = [[NSDateComponents alloc]init];
    [components setDay:[day intValue]];
    [components setMonth:[month intValue]];
    [components setYear:[year intValue]];
    
    NSCalendar *gregorianCalendar = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDate *date = [gregorianCalendar dateFromComponents:components];

    if ([components isValidDateInCalendar:gregorianCalendar]) {
        NSString *formattedDate = [formatter stringFromDate:date];
        return formattedDate;
    } else {
        return @"Такого дня не существует";
    }
}
@end
