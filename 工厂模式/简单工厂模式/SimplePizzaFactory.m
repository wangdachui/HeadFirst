//
//  SimplePizzaFactory.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "SimplePizzaFactory.h"
#import "CheesePizza.h"
#import "VegglePizza.h"

@implementation SimplePizzaFactory

- (Pizza *)creatPizza:(NSString *)type {
    Pizza *pizza;
    if ([type isEqualToString:@"Cheese"]) {
        pizza = [CheesePizza new];
    } else if ([type isEqualToString:@"Veggle"]) {
        pizza = [VegglePizza new];
    }
    return pizza;
}

@end
