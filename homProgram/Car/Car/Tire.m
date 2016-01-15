//
//  Tire.m
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (NSString *)brand
{
    return _brand;
}

- (float)preesure
{
    return _preesure;
}

- (float)tireDeepth
{
    return _tireDeepth;
}

- (instancetype)initWithBrand:(NSString *)brand
{
    if (self = [super init]) {
        _brand=brand;
    }
    return self;
}

- (instancetype)initWithPreesure:(float)preesure andTireDeepth:(float)tireDeepth
{
    if (self = [super init]) {
        _preesure=preesure;
        _tireDeepth=tireDeepth;
    }
    return self;
}

@end
