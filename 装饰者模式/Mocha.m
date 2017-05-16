//
//  Mocha.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "Mocha.h"

@interface Mocha ()
@property (strong, nonatomic) Beverage *beverage;
@end

@implementation Mocha

- (instancetype)initWith:(Beverage *)beverage {
    if (self = [super init]) {
        self.beverage = beverage;
    }
    return self;
}

- (NSString *)getDescription {
    return [NSString stringWithFormat:@"%@+%@",self.beverage.getDescription,@"摩卡"];
}

- (double)cost {
    return (self.beverage.cost + 3);
}

@end
