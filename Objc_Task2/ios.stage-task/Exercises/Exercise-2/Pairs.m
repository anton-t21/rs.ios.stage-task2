#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int count = (int)array.count;
    int result = 0;
    int globalStartPosition = 0;

    for (NSNumber *key in array) {
        for (int n = globalStartPosition; n < count - 1; n++) {
            int currentElement = key.intValue;
            int nextElement = array[n + 1].intValue;
            int difference = abs(currentElement - nextElement);
            if (difference == number.intValue) {
                result++;
            }
        }
        globalStartPosition++;
    }
    return result;
}

@end
