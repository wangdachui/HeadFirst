//
//  SimpleRemoteControl.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@interface SimpleRemoteControl : NSObject

@property (strong, nonatomic) Command *slot;
- (void)buttonWasPressed;

@end
