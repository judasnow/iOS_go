//
//  Fraction.h
//  objcgogogo
//
//  Created by ss on 2018/9/24.
//  Copyright © 2018 s All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef Fraction_h
#define Fraction_h

@interface Fraction : NSObject
-(void) print;
-(void) setNumberator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
@end

#endif /* Fraction_h */
