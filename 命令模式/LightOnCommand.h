//
//  LightOnCommand.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "Command.h"
#import "Light.h"

@interface LightOnCommand : Command

- (instancetype)initWith:(Light *)light;

@end
