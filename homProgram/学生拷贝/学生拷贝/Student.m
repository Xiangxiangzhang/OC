//
//  Student.m
//  学生拷贝
//
//  Created by qingyun on 15/11/7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithName:(NSString *)name andAge:(int)age andBooks:(NSArray *)books
{
    if (self = [super init]) {
        _name=name;
        _age = age;
        _books = books;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    Student *student = [[Student allocWithZone:zone] init];
    
    student.name = [_name copy];
    student.age = _age;
    student.books = [_books copy];
    
    return student;
}

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"name:%@ , age:%d , books:%@",_name,_age,_books];
    return desc;
}

@end
