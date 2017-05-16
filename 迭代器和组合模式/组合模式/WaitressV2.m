//
//  WaitressV2.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "WaitressV2.h"

@interface WaitressV2 ()
@property (strong, nonatomic) MenuComponent *allMenu;
@end

@implementation WaitressV2

- (instancetype)initWith:(MenuComponent *)allmenu {
    if (self = [super init]) {
        self.allMenu = allmenu;
    }
    return self;
}

- (void)printMenu {
    [self.allMenu print];
}

@end
