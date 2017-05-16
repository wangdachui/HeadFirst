//
//  Apple.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Apple : NSObject

@property (strong, nonatomic) NSString *name;

+ (Apple *)appleWith:(NSString *)name;

@end
