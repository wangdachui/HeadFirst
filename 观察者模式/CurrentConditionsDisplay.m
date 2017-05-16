//
//  CurrentConditionsDisplay.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "CurrentConditionsDisplay.h"

@interface CurrentConditionsDisplay()

@property (strong, nonatomic) Subject *weatherData;
@property (assign, nonatomic) float temp;
@property (assign, nonatomic) float humidity;
@property (assign, nonatomic) float pressure;

@end

@implementation CurrentConditionsDisplay

- (instancetype)initWith:(Subject *)weatherData {
    if (self = [super init]) {
        self.weatherData = weatherData;
    }
    return self;
}

- (void)updateTemp:(float)temp humidity:(float)humidity pressure:(float)pressure {
    self.temp       = temp;
    self.humidity   = humidity;
    self.pressure   = pressure;
    [self display];
}

- (void)display {
    NSLog(@"\n温度：%f \n湿度：%f \n压强：%f",self.temp,self.humidity,self.pressure);
}

@end
