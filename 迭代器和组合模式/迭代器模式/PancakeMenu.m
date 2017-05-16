//
//  PancakeMenu.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "PancakeMenu.h"
#import "MenuItem.h"

@interface PancakeMenu ()
@property (strong ,nonatomic) NSDictionary *menuItemDic;
@end

@implementation PancakeMenu

- (Iterator *)createrIterator {
    return [[PancakeHouseIterator alloc] initWith:self.menuItemDic];
}

- (NSDictionary *)menuItemDic {
    if (!_menuItemDic) {
        MenuItem *item1 = [MenuItem new];
        MenuItem *item2 = [MenuItem new];
        MenuItem *item3 = [MenuItem new];
        MenuItem *item4 = [MenuItem new];
        MenuItem *item5 = [MenuItem new];
        item1.name = @"Pancakeitem1";
        item2.name = @"Pancakeitem2";
        item3.name = @"Pancakeitem3";
        item4.name = @"Pancakeitem4";
        item5.name = @"Pancakeitem5";
        _menuItemDic = [NSDictionary dictionaryWithObjectsAndKeys:item1,@"item1",item2,@"item2",item3,@"item3", item4,@"item4",item5,@"item5",nil];
    }
    return _menuItemDic;
}

@end
