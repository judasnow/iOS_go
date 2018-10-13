//
//  PlayingCard.h
//  matchismo
//
//  Created by ss on 2018/10/6.
//  Copyright © 2018 judasnow. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
