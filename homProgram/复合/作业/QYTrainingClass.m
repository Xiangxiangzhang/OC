//
//  QYTrainingClass.m
//  作业
//
//  Created by qingyun on 15/10/24.
//  Copyright (c) 2015年 阿六. All rights reserved.
//

#import "QYTrainingClass.h"
#import "QYTeacher.h"
#import "QYStudent.h"

@implementation QYTrainingClass


- (void)setClassName:(NSString *)className
{
    _className=className;
}
- (NSString *)className
{
    return _className;
}

- (void)setFloor:(int)floor
{
    _floor=floor;
}
- (int)floor
{
    return _floor;
}

- (void)setStuNum:(int)stuNum
{
    _stuNum=stuNum;
}
- (int)stuNum
{
    return _stuNum;
}

- (void)setTeacher:(QYTeacher *)teachar
{
    _teacher=teachar;
}
- (QYTeacher *)teacher
{
    return _teacher;
}

- (void)setStudents:(QYStudent *)student atIndex:(StuIndex)index
{
    _students[index] =student;
}
- (QYStudent *)studentsAtIndex:(StuIndex)index
{
    return _students[index];
}

-(NSString *)description
{
    NSString *desc=[NSString stringWithFormat:@"培训班开课了\n 我在%d楼上课,主讲老师是%@,是%@,共有%d个学生",_floor,[_teacher name],_className,_stuNum];
    return desc;
}


- (void)introduceStu
{
    for (int i=1; i<7; i++) {
        NSLog(@"学生%d:%@",i,_students[i]);
    }
}

- (void)graduted
{
    NSLog(@"class %@ is graduated!",_className);
}

@end
