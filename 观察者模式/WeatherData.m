//
//  WeatherData.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "WeatherData.h"

@implementation WeatherData

- (instancetype)init {
    if (self = [super init]) {
        self.observers = [NSMutableArray array];
    }
    return self;
}

- (void)registerObsever:(Observer *)o {
    [self.observers addObject:o];
}

- (void)removeObsever:(Observer *)o {
    if ([self.observers containsObject:o]) {
        [self.observers removeObject:o];
    }
}

- (void)notifyObservers {
    for (Observer *observer in self.observers) {
        [observer updateTemp:self.temp humidity:self.humidity pressure:self.pressure];
    }
}

//得到最新观测值的时候通知观察者
- (void)measurementsChanged {
    [self notifyObservers];
}

- (void)setMeasurementsWithTemp:(float)temp humidity:(float)humidity pressure:(float)pressure {
    self.temp       = temp;
    self.humidity   = humidity;
    self.pressure   = pressure;
    [self measurementsChanged];
}

@end
