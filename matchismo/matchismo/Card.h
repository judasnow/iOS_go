//
//  Card.h
//  matchismo
//
//  Created by judasnow on 2018/10/4.
//  Copyright © 2018 judasnow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int) match:(NSArray *)otherCards;

@end
