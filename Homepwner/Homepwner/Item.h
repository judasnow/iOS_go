//
//  Item.h
//  Items
//
//  Created by ss on 2018/10/28.
//  Copyright © 2018 ss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
{
    NSString *_itemName;
    NSString *_serialNum;
    int _valueInDollars;
    NSDate *_dateCreated;
}

+ (instancetype)randomItem;

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int) value
                    serialNumber:(NSString *)sNumber;

- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNum;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSString *)desc;

// 这里仅仅是一个读方法
- (NSDate *)dateCreated;
@end
