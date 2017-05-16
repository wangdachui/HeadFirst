//
//  HomeTheaterFacade.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Light.h"
#import "Screen.h"
#import "DvdPlayer.h"

@interface HomeTheaterFacade : NSObject

- (instancetype)initWithLight:(Light *)light
                       screen:(Screen *)screen
                    dvdPlayer:(DvdPlayer *)dvdPlayer;

- (void)watchMovie;
- (void)endMovie;
@end
