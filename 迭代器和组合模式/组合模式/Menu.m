//
//  Menu.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "Menu.h"

@interface Menu ()

@property (strong, nonatomic) NSMutableArray *menuCompanents;

@end

@implementation Menu

- (instancetype)initWith:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

- (void)add:(MenuComponent *)menucomponent {
    [self.menuCompanents addObject:menucomponent];
}

- (void)remove:(MenuComponent *)menucomponent {
    [self.menuCompanents removeObject:menucomponent];
}

- (MenuComponent *)getChild:(int)position {
    if (position < self.menuCompanents.count && position >= 0) {
        return [self.menuCompanents objectAtIndex:position];
    } else {
        return nil;
    }
}

- (void)print {
    NSLog(@"菜单名字：%@",self.name);
    //递归打印
    NSEnumerator *enu1 = [self.menuCompanents objectEnumerator];
    MenuComponent * obj = nil;
    // 正序，获取下一个需要遍历的元素
    while (obj = [enu1 nextObject]) {
        [obj print];
    }

}

- (NSArray *)menuCompanents {
    if (!_menuCompanents) {
        _menuCompanents = [NSMutableArray array];
    }
    return _menuCompanents;
}

@end
