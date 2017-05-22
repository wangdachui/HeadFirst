//
//  Pursuit.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/22.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "Pursuit.h"

@interface Pursuit ()

@property (strong, nonatomic) Girl *mm;

@end

@implementation Pursuit

- (instancetype)initWith:(Girl *)mm {
    if (self = [super init]) {
        self.mm = mm;
    }
    return self;
}

- (void)giveDolls {
    NSLog(@"%@ 送你洋娃娃",self.mm.name);
}

- (void)giveFlowers {
    NSLog(@"%@ 送你鲜花",self.mm.name);
}

- (void)giveChocolate {
    NSLog(@"%@ 送你巧克力",self.mm.name);
}

@end
