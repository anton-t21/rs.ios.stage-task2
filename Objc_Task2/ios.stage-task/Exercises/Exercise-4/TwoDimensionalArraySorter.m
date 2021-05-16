#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSMutableArray *arrayOfStrings = [NSMutableArray new];
    NSMutableArray *arrayOfNumbers = [NSMutableArray new];

    for (NSArray *key in array) {
        if ([key isKindOfClass:[NSArray class]]) {
            for (NSObject *element in key) {
                if ([element isKindOfClass:[NSString class]]) {
                    [arrayOfStrings addObject:element];
                } else if ([element isKindOfClass:[NSNumber class]]) {
                    [arrayOfNumbers addObject:element];
                }
            }
        }
    }

    int stringCount = (int)arrayOfStrings.count;
    int numbersCount = (int)arrayOfNumbers.count;

    NSSortDescriptor *sdAsc = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];

    if (stringCount != 0 && numbersCount == 0) {
        return [arrayOfStrings sortedArrayUsingDescriptors:@[sdAsc]];
    } else if (stringCount == 0 && numbersCount != 0) {
        return [arrayOfNumbers sortedArrayUsingDescriptors:@[sdAsc]];
    } else if (stringCount != 0 && numbersCount != 0) {
        NSSortDescriptor *sdDesc = [[NSSortDescriptor alloc] initWithKey:nil ascending:NO];
        NSMutableArray *arrayOfNumbersAndStrings = [NSMutableArray new];
        [arrayOfNumbersAndStrings addObject:[arrayOfNumbers sortedArrayUsingDescriptors:@[sdAsc]]];
        [arrayOfNumbersAndStrings addObject:[arrayOfStrings sortedArrayUsingDescriptors:@[sdDesc]]];
        return  arrayOfNumbersAndStrings;
    }

    return @[];
}

@end
