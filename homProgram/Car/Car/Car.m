//
//  Car.m
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Car.h"

@implementation Car

- (NSString *)brand
{
    return _brand;
}

- (int)price
{
    return _price;
}

- (Tire *)tires
{
    return _tires;
}

- (Engine *)engine
{
    return _engine;
}

- (instancetype)initWithBrand:(NSString *)brand andPrice:(int)price
{
    if (self = [super init]) {
        _brand=brand;
        _price=price;
    }
    return self;
}

- (instancetype)initWithTires:(Tire *)tires
{
    if (self = [super init]) {
        _tires=tires;
    }
    return self;
}

- (instancetype)initWithEngine:(Engine *)engine
{
    if (self = [super init]) {
        _engine=engine;
    }
    return self;
}

- (instancetype)initWithTires:(Tire *)tires andEngine:(Engine *)engine
{
    if (self = [self initWithTires:tires andEngine:engine]) {
        
    }
    return self;
}

    
@end
