//
//  Observer.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Observer : NSObject
//当气象观测值改变时，主题会把这些状态传送给观察者
- (void)updateTemp:(float)temp humidity:(float)humidity pressure:(float)pressure;

@end
