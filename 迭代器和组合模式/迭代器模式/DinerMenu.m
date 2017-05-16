//
//  DinerMenu.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "DinerMenu.h"
#import "MenuItem.h"

@interface DinerMenu ()
@property (strong ,nonatomic) NSArray *menuItems;
@end

@implementation DinerMenu

- (Iterator *)createrIterator {
    return [[DinerMenuIterator alloc] initWith:self.menuItems];
}

- (NSArray *)menuItems {
    if (!_menuItems) {
        MenuItem *item1 = [MenuItem new];
        MenuItem *item2 = [MenuItem new];
        MenuItem *item3 = [MenuItem new];
        MenuItem *item4 = [MenuItem new];
        MenuItem *item5 = [MenuItem new];
        item1.name = @"item1";
        item2.name = @"item2";
        item3.name = @"item3";
        item4.name = @"item4";
        item5.name = @"item5";
        _menuItems = @[item1,item2,item3,item4,item5];
    }
    return _menuItems;
}

@end
