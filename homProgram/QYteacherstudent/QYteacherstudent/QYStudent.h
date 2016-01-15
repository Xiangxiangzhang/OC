//
//  QYStudent.h
//  QYteacherstudent
//
//  Created by qingyun on 15/10/23.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYPerson.h"

@interface QYStudent : QYPerson
{
    NSString *_school;
    int _grade;
}

- (void)setSchool:(NSString *)school;
- (NSString *)school;

- (void)setGrade:(int)grade;
- (int)grade;

- (void)takeLessons;
- (void)dohomeWork;

@end

