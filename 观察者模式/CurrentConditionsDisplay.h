//
//  CurrentConditionsDisplay.h
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "Observer.h"
#import "Subject.h"

@interface CurrentConditionsDisplay : Observer

- (instancetype)initWith:(Subject *)weatherData;

@end
