//
//  PizzaStore.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "SimplePizzaFactory.h"

@interface PizzaStore : NSObject

- (instancetype)initWith:(SimplePizzaFactory *)factory;

//工厂模式
- (Pizza *)creatPizza:(NSString *)type;
- (Pizza *)orderPizza:(NSString *)type;
@end
