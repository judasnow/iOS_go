//
//  CardMatchingGame.h
//  matchismo
//
//  Created by judasnow on 2018/10/11.
//  Copyright © 2018 judasnow. All rights reserved.
//

// group 的选项在左下脚

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

- (instancetype)initWithCardCount:(NSUInteger)count
                        usingDeck:(Deck *)deck;
- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger) index;

@property (nonatomic, readonly)NSInteger score;

@end
