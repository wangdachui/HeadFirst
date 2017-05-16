//
//  Whip.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "Whip.h"

@interface Whip ()
@property (strong, nonatomic) Beverage *beverage;
@end

@implementation Whip

- (instancetype)initWith:(Beverage *)beverage {
    if (self = [super init]) {
        self.beverage = beverage;
    }
    return self;
}

- (NSString *)getDescription {
    return [NSString stringWithFormat:@"%@+%@",self.beverage.getDescription,@"奶油"];
}

- (double)cost {
    return (self.beverage.cost + 4);
}

@end
