//
//  HomeTheaterFacade.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "HomeTheaterFacade.h"

@interface HomeTheaterFacade ()

@property (strong, nonatomic) Light *light;
@property (strong, nonatomic) Screen *screen;
@property (strong, nonatomic) DvdPlayer *dvdPlayer;

@end

@implementation HomeTheaterFacade

- (instancetype)initWithLight:(Light *)light screen:(Screen *)screen dvdPlayer:(DvdPlayer *)dvdPlayer {
    if (self = [super init]) {
        self.light = light;
        self.screen = screen;
        self.dvdPlayer = dvdPlayer;
    }
    return self;
}

- (void)watchMovie {
    [self.screen down];
    [self.dvdPlayer on];
    [self.light off];
    [self.dvdPlayer play];
}

- (void)endMovie {
    [self.screen up];
    [self.dvdPlayer off];
    [self.light on];
}

@end
