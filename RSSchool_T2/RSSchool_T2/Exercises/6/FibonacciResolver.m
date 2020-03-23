#import "FibonacciResolver.h"

@implementation FibonacciResolver
- (NSArray*)productFibonacciSequenceFor:(NSNumber*)number {
    
    int intNum = number.intValue;
    
    int num1 = 1;
    int num2 = 1;
    int num3 = 0;
    
    while (num1 * num2 < intNum) {
        num1 = num2;
        num2 = num3;
        num3 = num1 + num2;
    }
    
    if (num1 * num2 == intNum) {
        return @[@(num1), @(num2), @(1)];
    } else {
        return @[@(num1), @(num2), @(0)];
    }
}

@end
