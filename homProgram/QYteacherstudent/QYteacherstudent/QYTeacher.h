//
//  QYTeacher.h
//  QYteacherstudent
//
//  Created by qingyun on 15/10/23.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYPerson.h"


@interface QYTeacher : QYPerson
{
    NSString *_stage;
    int _yearsofworking;
    float _salary;
}

- (void)setStage:(NSString *)stage;
- (NSString *)stage;

- (void)setYearsofworking:(int)yearsofworking;
- (int)yearsofworking;

- (void)setSalary:(float)salary;
- (float)salary;

- (void)teach;

@end
