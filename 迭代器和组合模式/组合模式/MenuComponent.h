//
//  MenuComponent.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuComponent : NSObject

- (void)add:(MenuComponent *)menucomponent;
- (void)remove:(MenuComponent *)menucomponent;
- (MenuComponent *)getChild:(int)position;
- (void)print;

@end
