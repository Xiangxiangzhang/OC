//
//  main.m
//  QYteacherstudent
//
//  Created by qingyun on 15/10/23.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYPerson.h"
#import "QYTeacher.h"
#import "QYStudent.h"


int main(int argc, const char * argv[]) {
    
    QYTeacher *teacher=[QYTeacher new];
    [teacher setName:@"佩佩"];
    [teacher setAge:30];
    [teacher setNative:@"商丘"];
    [teacher setStage:@"二"];
    [teacher teach];
    
    QYStudent *student=[QYStudent new];
    [student setName:@"乐乐"];
    [student setAge:18];
    [student setNative:@"商丘"];
    [student setSchool:@"万方"];
    [student setGrade:4];
    [student takeLessons];
    [student dohomeWork];
    
    
    return 0;
}
