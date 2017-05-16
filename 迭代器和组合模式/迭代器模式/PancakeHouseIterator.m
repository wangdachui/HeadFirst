//
//  PancakeHouseIterator.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "PancakeHouseIterator.h"
#import "MenuItem.h"

@interface PancakeHouseIterator ()

@property (strong ,nonatomic) NSDictionary *menuItemDic;
@property (strong ,nonatomic) NSArray *keyArray;
@property (assign ,nonatomic) int position;

@end

@implementation PancakeHouseIterator

- (instancetype)initWith:(NSDictionary *)menuItemDic {
    if (self = [super init]) {
        self.menuItemDic = menuItemDic;
        self.keyArray = [menuItemDic allKeys];
    }
    return self;
}

- (id)next {
    NSString *itemKey = [self.keyArray objectAtIndex:self.position];
    self.position += 1;
    MenuItem *item = [self.menuItemDic objectForKey:itemKey];
    return item;
}

- (BOOL)hasNext {
    if (self.position >= self.keyArray.count ||
        ![self.keyArray objectAtIndex:self.position]) {
        return NO;
    } else {
        return YES;
    }
}

@end
