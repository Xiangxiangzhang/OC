//
//  QYTeacher.m
//  QYteacherstudent
//
//  Created by qingyun on 15/10/23.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYTeacher.h"

@implementation QYTeacher

- (void)setStage:(NSString *)stage
{
    _stage=stage;
}
- (NSString *)stage
{
    return _stage;
}

- (void)setYearsofworking:(int)yearsofworking
{
    _yearsofworking=yearsofworking;
}
- (int)yearsofworking
{
    return _yearsofworking;
}

- (void)setSalary:(float)salary
{
    _salary=salary;
}
- (float)salary
{
    return _salary;
}

- (void)teach
{
    [super introdece];
    NSLog(@"%@在讲第%@阶段",_name,_stage);
}

@end
