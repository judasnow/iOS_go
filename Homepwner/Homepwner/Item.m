//
//  Item.m
//  Items
//
//  Created by ss on 2018/10/28.
//  Copyright © 2018 ss. All rights reserved.
//

#import "Item.h"

@implementation Item

+ (instancetype)randomItem
{
    return [[Item alloc] initWithItemName:@"1024"];
}

- (NSString *)desc
{
    return @"desc";
}

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self) {
        _itemName = name;
        _serialNum = sNumber;
        _valueInDollars = value;
        
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

- (instancetype)initWithItemName:itemName
{
    return [self initWithItemName:itemName valueInDollars:0 serialNumber:@""];
}

- (instancetype)init
{
    return [self initWithItemName:@"item"];
}

- (void)setItemName:(NSString *)str
{
    // 除非是发消息的时候 否则不需要引用 self
    _itemName = str;
}

- (NSString *)itemName
{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    _serialNum = str;
}

- (NSString *)serialNum
{
    return _serialNum;
}

- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}

- (int)valueInDollars
{
    return _valueInDollars;
}

- (NSDate *)dateCreated
{
    return _dateCreated;
}

@end
