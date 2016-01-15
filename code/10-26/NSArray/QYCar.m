//
//  QYCar.m
//  QYCar
//
//  Created by qingyun on 15/10/24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYCar.h"

@implementation QYCar

- (void)setEngine:(QYEngine *)engine
{
    _engine=engine;
}
- (QYEngine *)engine
{
    return _engine;
}

- (void)setTire:(QYTire *)tire
{
    _tire=tire;
}
- (QYTire *)tire
{
    return _tire;
}
- (void)setName:(NSString *)name
{
    _name=name;
}
- (NSString *)name
{
    return _name;
}

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"我是一辆%@车，有动力为%.2f 的引擎，有花纹深度为%.2f的轮胎" ,_name,[_engine power],[_tire deep]];
    return desc;
}

@end
