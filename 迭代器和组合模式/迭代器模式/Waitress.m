//
//  Waitress.m
//  HeadfirstDemo
//
//  Created by 王涛 on 2017/5/16.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "Waitress.h"
#import "DinerMenuIterator.h"
#import "PancakeHouseIterator.h"
#import "MenuItem.h"

@interface Waitress ()

@property (strong, nonatomic) DinerMenu *dinerMenu;
@property (strong, nonatomic) PancakeMenu *pancakeMenu;

@end

@implementation Waitress

- (instancetype)initWithDinerMenu:(DinerMenu *)dinerMenu pancakeMenu:(PancakeMenu *)pancakeMenu{
    if (self = [super init]) {
        self.dinerMenu = dinerMenu;
        self.pancakeMenu = pancakeMenu;
    }
    return self;
}

- (void)printMenu {
    Iterator *dinerIterator = [self.dinerMenu createrIterator];
    Iterator *pancakeIterator = [self.pancakeMenu createrIterator];
    [self printWith:dinerIterator];
    [self printWith:pancakeIterator];
}

- (void)printWith:(Iterator *)iterator {
    while (iterator.hasNext) {
        MenuItem *item = (MenuItem *)iterator.next;
        NSLog(@"%@",item.name);
    }
}

@end
