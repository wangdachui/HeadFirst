//
//  ProxyPursuit.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/22.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "ProxyPursuit.h"
#import "Pursuit.h"

@interface ProxyPursuit ()

@property (strong, nonatomic) Girl *mm;
@property (strong, nonatomic) Pursuit *gg;

@end

@implementation ProxyPursuit

- (instancetype)initWith:(Girl *)mm {
    if (self = [super init]) {
        self.mm = mm;
        self.gg = [[Pursuit alloc] initWith:mm];
    }
    return self;
}

- (void)giveDolls {
    [self.gg giveDolls];
}

- (void)giveFlowers {
    [self.gg giveFlowers];
}

- (void)giveChocolate {
    [self giveChocolate];
}

@end
