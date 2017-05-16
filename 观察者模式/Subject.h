//
//  Subject.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

@interface Subject : NSObject

- (void)registerObsever:(Observer *)o;
- (void)removeObsever:(Observer *)o;
- (void)notifyObservers;

@end
