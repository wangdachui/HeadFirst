//
//  WeatherData.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "Subject.h"

@interface WeatherData : Subject

//用来记录观察者
@property (strong, nonatomic) NSMutableArray *observers;
@property (assign, nonatomic) float temp;
@property (assign, nonatomic) float humidity;
@property (assign, nonatomic) float pressure;

- (void)setMeasurementsWithTemp:(float)temp humidity:(float)humidity pressure:(float)pressure ;
@end
