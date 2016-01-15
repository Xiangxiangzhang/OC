//
//  QYTrainingClass.h
//  作业
//
//  Created by qingyun on 15/10/24.
//  Copyright (c) 2015年 阿六. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QYTeacher;
@class QYStudent;

typedef enum {
    FirstStu=1,
    SecondStu,
    ThirdStu,
    FouthStu,
    FifthStu,
    LastStu
} StuIndex;

#define StuNum 20

@interface QYTrainingClass : NSObject
{
    NSString *_className;
    int _floor;
    int _stuNum;
    QYTeacher *_teacher;
    QYStudent *_students[StuNum];
    
}

- (void)setClassName:(NSString *)className;
- (NSString *)className;

- (void)setFloor:(int)floor;
- (int)floor;

- (void)setStuNum:(int)stuNum;
- (int)stuNum;

- (void)setTeacher:(QYTeacher *)teachar;
- (QYTeacher *)teacher;

- (void)setStudents:(QYStudent *)student atIndex:(StuIndex)index;
- (QYStudent *)studentsAtIndex:(StuIndex)index;

- (void)introduceStu;

- (void)graduted;



@end
