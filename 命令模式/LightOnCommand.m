//
//  LightOnCommand.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "LightOnCommand.h"

@interface LightOnCommand ()
@property (strong, nonatomic) Light *light;
@end

@implementation LightOnCommand

- (instancetype)initWith:(Light *)light {
    if (self = [super init]) {
        self.light = light;
    }
    return self;
}

- (void)excute {
    [self.light on];
}


@end
