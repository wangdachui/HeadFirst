//
//  Duck.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/4/20.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyBehavior.h"
#import "QuackBehavior.h"

@interface Duck : NSObject

@property (strong, nonatomic) FlyBehavior *flyBehavior;
@property (strong, nonatomic) QuackBehavior *quackBehavior;

- (void)display;
- (void)performFlyBehavior;
- (void)performQuackBehavior;
- (void)setFlyBehavior:(FlyBehavior *)behavior;
- (void)setQuackBehavior:(QuackBehavior *)behavior;
@end
