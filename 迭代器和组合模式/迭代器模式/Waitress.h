//
//  Waitress.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DinerMenu.h"
#import "PancakeMenu.h"

@interface Waitress : NSObject

- (instancetype)initWithDinerMenu:(DinerMenu *)dinerMenu pancakeMenu:(PancakeMenu *)pancakeMenu;

- (void)printMenu;

@end
