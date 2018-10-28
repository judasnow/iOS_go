//
//  ItemStore.h
//  Homepwner
//
//  Created by ss on 2018/10/28.
//  Copyright © 2018 judasnow. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Item.h"

@class Item;

@interface ItemStore : NSObject

@property (nonatomic, readonly) NSArray *allItems;

+ (instancetype)sharedStore;
- (Item *)createItem;

@end
