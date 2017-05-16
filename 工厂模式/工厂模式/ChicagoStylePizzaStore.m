//
//  ChicagoStylePizzaStore.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "ChicagoStylePizzaStore.h"
#import "ChicagoCheesePizza.h"
#import "ChicagoVegglePizza.h"

@implementation ChicagoStylePizzaStore

- (Pizza *)creatPizza:(NSString *)type {
    Pizza *pizza;
    if ([type isEqualToString:@"Cheese"]) {
        pizza = [ChicagoCheesePizza new];
    } else if ([type isEqualToString:@"Veggle"]) {
        pizza = [ChicagoVegglePizza new];
    }
    return pizza;
}

@end
