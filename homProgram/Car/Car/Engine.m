//
//  Engine.m
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (NSString *)name
{
    return _name;
}

- (float)power
{
    return _power;
}

- (instancetype)init
{
    if (self = [super init]) {
        _name=@"abc";
        _power=4.5;
    }
    return self;
}

@end
