//
//  CaffeineBeverage.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "CaffeineBeverage.h"

@implementation CaffeineBeverage

- (void)prepareRecipe {
    [self boilWater];
    [self brew];
    [self addCondiments];
    [self pourInCup];
}

- (void)boilWater {
    NSLog(@"煮沸水");
}

- (void)pourInCup {
    NSLog(@"倒进杯子");
}

@end
