//
//  Fraction.m
//  objcgogogo
//
//  Created by ss on 2018/9/24.
//  Copyright © 2018 ss. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print {
    NSLog(@"%i/%i\n", numerator, denominator);
}

-(void) setNumberator:(int)n {
    numerator = n;
}

-(void) setDenominator:(int)d {
    denominator = d;
}

-(int) numerator {
    return numerator;
}

-(int) denominator {
    return denominator;
}

-(double) convertToNum {
    if (denominator) {
        return (double)numerator / denominator;
    } else {
        return NAN;
    }
}

@end
