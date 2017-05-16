//
//  WaitressV2.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuComponent.h"

@interface WaitressV2 : NSObject

- (instancetype)initWith:(MenuComponent *)allmenu;
- (void)printMenu;

@end
