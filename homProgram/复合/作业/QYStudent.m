//
//  QYStudent.m
//  作业
//
//  Created by qingyun on 15/10/24.
//  Copyright (c) 2015年 阿六. All rights reserved.
//

#import "QYStudent.h"

@implementation QYStudent

- (void)setName:(NSString *)name
{
    _name=name;
}
- (NSString *)name
{
    return _name;
}

- (void)setSex:(NSString *)sex
{
    _sex=sex;
}
- (NSString *)sex
{
    return _sex;
}

- (void)setAge:(int)age
{
    _age=age;
}
- (int)age
{
    return _age;
}

- (void)setHobby:(NSString *)hobby
{
    _hobby=hobby;
}
- (NSString *)hobby
{
    return _hobby;
}


- (NSString *)description
{
    NSString *desc=[NSString stringWithFormat:@"大家好,我是%@,我的性别是%@,我的年龄是%d,我的爱好是%@!",_name,_sex,_age,_hobby];
    return desc;
}














@end
