//
//  NYStylePizzaStore.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "NYStylePizzaStore.h"
#import "NYCheesePizza.h"
#import "NYVegglePizza.h"


@implementation NYStylePizzaStore

- (Pizza *)creatPizza:(NSString *)type {
    Pizza *pizza;
    if ([type isEqualToString:@"Cheese"]) {
        pizza = [NYCheesePizza new];
    } else if ([type isEqualToString:@"Veggle"]) {
        pizza = [NYVegglePizza new];
    }
    return pizza;
}

@end
