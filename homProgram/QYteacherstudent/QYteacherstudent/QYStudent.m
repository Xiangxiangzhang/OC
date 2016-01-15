//
//  QYStudent.m
//  QYteacherstudent
//
//  Created by qingyun on 15/10/23.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYStudent.h"

@implementation QYStudent

- (void)setSchool:(NSString *)school
{
    _school=school;
}
- (NSString *)school
{
    return _school;
}

- (void)setGrade:(int)grade
{
    _grade=grade;
}
- (int)grade
{
    return _grade;
}

- (void)takeLessons
{
    [super introdece];
    NSLog(@"来自%@,读%d年级,%@在听课",_school,_grade,_name);
}
- (void)dohomeWork
{
    NSLog(@"%@在做作业",_name);
}

@end

