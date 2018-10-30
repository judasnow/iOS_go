//
//  ItemStore.m
//  Homepwner
//
//  Created by ss on 2018/10/28.
//  Copyright © 2018 judasnow. All rights reserved.
//

#import "ItemStore.h"
#import "Item.h"

// 这里是一个单例模式

@interface ItemStore()

@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation ItemStore

+ (instancetype)sharedStore
{
    static ItemStore *store = nil;
    if (!store) {
        store = [[self alloc] initPrivate];
    }
    return store;
}

- (instancetype)init
{
    @throw [NSException exceptionWithName:@"Singletopn"
                                   reason:@"use shareStore"
                                 userInfo:nil];
}

- (instancetype)initPrivate
{
    self = [super init];
    if (self) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)allItems
{
    return [self.privateItems copy];
}

- (Item *)createItem
{
    Item *item = [Item randomItem];
    [self.privateItems addObject:item];
    return item;
}

@end
