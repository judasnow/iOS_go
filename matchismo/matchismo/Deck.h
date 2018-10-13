//
//  Dech.h
//  matchismo
//
//  Created by judasnow on 2018/10/4.
//  Copyright © 2018 judasnow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *)card atTop:(BOOL)atTop;
- (void) addCard:(Card *)card;
- (Card *) drawRandomCard;

@end
