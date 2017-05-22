//
//  ProxyPursuit.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/22.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GiveGift.h"
#import "Girl.h"

@interface ProxyPursuit : NSObject<GiveGift>

- (instancetype)initWith:(Girl *)mm;

@end
