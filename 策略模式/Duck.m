//
//  Duck.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/4/20.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "Duck.h"

@implementation Duck

- (void)display {
    NSLog(@"父类鸭子的形状");
}

- (void)performFlyBehavior {
    [self.flyBehavior fly];
}

- (void)performQuackBehavior {
    [self.quackBehavior quack];
}

- (void)setFlyBehavior:(FlyBehavior *)behavior {
    _flyBehavior = behavior;
}

- (void)setQuackBehavior:(QuackBehavior *)behavior {
    _quackBehavior = behavior;
}

@end
