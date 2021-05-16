#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    NSString *str = @"" ;
    NSUInteger x = n;
    
    for (int i = 0; i < 8; i++) {
        str = [str stringByAppendingString:[NSString stringWithFormat: @"%lu", x%2]];
        x = x >> 1;
    }
    
    long result = strtol([str UTF8String], NULL, 2);
    
    return result;
}
