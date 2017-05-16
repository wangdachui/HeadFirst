//
//  SimpleRemoteControl.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "SimpleRemoteControl.h"

@interface SimpleRemoteControl()

@end

@implementation SimpleRemoteControl

- (void)buttonWasPressed {
    [self.slot excute];
}

@end
