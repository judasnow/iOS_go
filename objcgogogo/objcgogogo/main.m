//
//  main.m
//  objcgogogo
//
//  Created by ss on 2018/9/16.
//  Copyright © 2018 ss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *f = [[Fraction alloc] init];
        [f setDenominator: 3];
        [f setNumberator: 1];
        [f print];
    }
    return 0;
}
