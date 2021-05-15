#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int count = (int)array.count;
    int result = 0;
    int globalStartPosition = 0;

    for (NSNumber *key in array) {
        int actualStartPosition = globalStartPosition;
        for (int n = actualStartPosition; n < count - 1; n++) {
            int currentElement = key.intValue;
            int nextElement = array[actualStartPosition + 1].intValue;
            int difference = abs(currentElement - nextElement);
            if (difference == number.intValue) {
                result = result + 1;
            }
            actualStartPosition++;
        }
        globalStartPosition = globalStartPosition + 1;
    }
    return result;
}

@end
