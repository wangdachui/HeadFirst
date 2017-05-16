//
//  DinerMenuIterator.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "DinerMenuIterator.h"
#import "MenuItem.h"

@interface DinerMenuIterator ()

@property (strong ,nonatomic) NSArray *menuItems;
@property (assign ,nonatomic) int position;

@end

@implementation DinerMenuIterator

- (instancetype)initWith:(NSArray *)menuItems {
    if (self = [super init]) {
        self.menuItems = menuItems;
    }
    return self;
}

- (id)next {
    MenuItem *item = [self.menuItems objectAtIndex:self.position];
    self.position += 1;
    return item;
}

- (BOOL)hasNext {
    if (self.position >= self.menuItems.count ||
        ![self.menuItems objectAtIndex:self.position]) {
        return NO;
    } else {
        return YES;
    }
}

@end
