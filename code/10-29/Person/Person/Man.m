//
//  Man.m
//  Person
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Man.h"

@implementation Man

- (int)age
{
    return _age;
}

- (NSString *)name
{
    return _name;
}

- (NSString *)id1
{
    return _ID;
}

- (NSString *)blood
{
    return _blood;
}

- (Woman *)wife
{
    return _wife;
}

// 该方法在其他初始化函数中调用，它就是一个指定初始化方法
// 在最终被指定为初始化方法的这个方法一定要调用[super init];

// 设计指定初始化方法的原则
// 1.初始化的成员变量尽量多
// 2.尽量做到主要成员变量的初始化

- (instancetype)initWithAge:(int)age
{
    if (self = [super init]) {
        _age=age;
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [self initWithAge:age ]) {
        _name=name;
    }
    return self;
}

- (instancetype)initWithAge:(int)age andBlood:(NSString *)blood
{
    if (self = [self initWithAge:age]) {
        _blood = blood;
    }
    return self;
}
- (instancetype)initWithWife:(Woman *)wife andID:(NSString *)id1
{
    if (self = [super init]) {
        _wife=wife;
        _ID=id1;
    }
    return self;
}

@end
