//
//  PizzaStore.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "PizzaStore.h"

@interface PizzaStore ()

@property (strong, nonatomic) SimplePizzaFactory *factory;

@end

@implementation PizzaStore

- (instancetype)initWith:(SimplePizzaFactory *)factory {
    if (self = [super init]) {
        self.factory = factory;
    }
    return self;
}

- (Pizza *)orderPizza:(NSString *)type {
    Pizza *pizza;
    //简单工厂模式
    //pizza = [self.factory creatPizza:@"Cheese"];
    //工厂模式
    pizza = [self creatPizza:type]; //灵魂步骤，将局部信息留给子类实现，典型的封装变化。
    NSLog(@"定的披萨名字：%@",pizza.name);
    return pizza;
}

@end
