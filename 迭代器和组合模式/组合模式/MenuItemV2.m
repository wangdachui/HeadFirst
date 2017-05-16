//
//  MenuItemV2.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "MenuItemV2.h"

@implementation MenuItemV2

- (instancetype)initWith:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

- (void)print {
    NSLog(@"菜单项名字：%@",self.name);
}

@end
