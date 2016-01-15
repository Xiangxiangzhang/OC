//
//  Salary.m
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Salary.h"

@implementation Salary

- (instancetype)initWithMonth:(int)month andMoney:(int)money
{
    if (self = [super init]) {
        _money = money;
        _month = month;
    }
    return self;
}

@end
