//
//  TurkeyAdapter.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "TurkeyAdapter.h"

@interface TurkeyAdapter ()
@property (strong, nonatomic) Turkey *turkey;
@end

@implementation TurkeyAdapter

- (instancetype)initWith:(Turkey *)turkey {
    if (self = [super init]) {
        self.turkey = turkey;
    }
    return self;
}

- (void)performQuackBehavior {
    [self.turkey gobble];
}

- (void)performFlyBehavior {
    [self.turkey fly];
}

@end
