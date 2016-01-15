//
//  Student.m
//  冒泡排序
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype) initWithNmae:(NSString *)name andAge:(int)age
{
    if (self = [super init]) {
        _name = name;
        _age = age;
    }
    return self;
}

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"name:%@, age:%d",_name,_age];
    return desc;
}

@end
