#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    int count = (int)numbersArray.count;
    NSString *strResult = @"";

    if (count > 4) {
        return strResult;
    } else {
        NSString *dot = @".";

        int dotsCount = 0;

        for (NSNumber *key in numbersArray) {
            int keyInt = key.intValue;
            if (keyInt >= 0 && keyInt < 256) {
                NSString *myString = [key stringValue];
                strResult = [strResult stringByAppendingString:myString];
                if (dotsCount < 3) {
                    strResult = [strResult stringByAppendingString:dot];
                }
                dotsCount++;
            } else {
                if (keyInt < 0) {
                    strResult = @"Negative numbers are not valid for input.";
                    return  strResult;
                } else {
                    strResult = @"The numbers in the input array can be in the range from 0 to 255.";
                    return  strResult;
                }
            }
        }

        if (count < 4) {
            int restSymbols = 4 - count;
            if (restSymbols == 4) {
                return strResult;
            } else {
                for (int i = 0; i < restSymbols; i++) {
                    if (i != restSymbols - 1) {
                        NSString *zeroDot = @"0.";
                        strResult = [strResult stringByAppendingString:zeroDot];
                    } else {
                        NSString *zero = @"0";
                        strResult = [strResult stringByAppendingString:zero];
                    }
                }
            }
        }
    }
    
    return strResult;
}

@end
