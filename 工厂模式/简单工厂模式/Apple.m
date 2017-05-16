//
//  Apple.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "Apple.h"

@implementation Apple

+ (Apple *)appleWith:(NSString *)name {
    Apple *apple = [Apple new];
    apple.name = name;
    return apple;
}

@end
