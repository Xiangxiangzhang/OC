//
//  Woman.m
//  Person
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Woman.h"

@implementation Woman

- (instancetype)init
{
    if (self = [super init]) {
        _name = @"Rose";
        _age = 18;
    }
    return self;
}

- (NSString *)name
{
    return _name;
}

- (int)age
{
    return _age;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@,age:%d",self->_name,self->_age];
}


@end
