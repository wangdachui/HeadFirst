//
//  Menu.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "MenuComponent.h"

@interface Menu : MenuComponent

@property (strong, nonatomic) NSString *name;

- (instancetype)initWith:(NSString *)name;

@end
