//
//  LightOffCommand.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "LightOffCommand.h"

@interface LightOffCommand ()
@property (strong, nonatomic) Light *light;
@end

@implementation LightOffCommand

- (instancetype)initWith:(Light *)light {
    if (self = [super init]) {
        self.light = light;
    }
    return self;
}

- (void)excute {
    [self.light off];
}

@end
