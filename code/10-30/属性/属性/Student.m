//
//  Student.m
//  属性
//
//  Created by qingyun on 15/10/30.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Student.h"
#import "School.h"

@implementation Student

- (instancetype)initWithAge:(int)age
{
    if (self = [super initWithName:@"QYstedent"]) {
        _age=age;
    }
    return self;
}

// 对于属性生成 getter在个别情况下是不满意，比如如下方式：需要在首次获取该成员变量时创建 成员变量对象的情况下就需要改写这个getter方法，这样的方式也是 "懒加载" 的思想
- (School *)school
{
    if (_school ==nil) {
        _school=[[School alloc]init];
    }
    return _school;
}

@end
