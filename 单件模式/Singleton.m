//
//  Singleton.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton* sInstance = nil;

+ (Singleton *)sharedInstance {
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        sInstance = [[self alloc] init];
    });
    return sInstance;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    @synchronized(self) {
        if (sInstance == nil) {
            sInstance = [super allocWithZone:zone];
            return sInstance;
        }
    }
    return nil;
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

@end
