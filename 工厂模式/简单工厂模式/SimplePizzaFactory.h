//
//  SimplePizzaFactory.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface SimplePizzaFactory : NSObject

- (Pizza *)creatPizza:(NSString *)type;

@end
