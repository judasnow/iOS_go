//
//  Card.m
//  matchismo
//
//  Created by judasnow on 2018/10/4.
//  Copyright © 2018 judasnow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Card()
@end

@implementation Card

- (int) match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
