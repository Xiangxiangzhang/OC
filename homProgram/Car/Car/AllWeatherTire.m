//
//  AllWeatherTire.m
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "AllWeatherTire.h"

@implementation AllWeatherTire

- (NSString *)rainHandling
{
    return _rainHandling;
}

- (NSString *)snowHandling
{
    return _snowHandling;
}

- (instancetype)initWithRainHandling:(NSString *)rainHandling andSnowHandling:(NSString *)snowHandling
{
    if (self = [super init]) {
        _rainHandling=rainHandling;
        _snowHandling=snowHandling;
    }
    return self;
}

@end
