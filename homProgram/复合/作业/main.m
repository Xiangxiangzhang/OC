//
//  main.m
//  作业
//
//  Created by qingyun on 15/10/24.
//  Copyright (c) 2015年 阿六. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYTrainingClass.h"
#import "QYTeacher.h"
#import "QYStudent.h"

int main(int argc, const char * argv[]) {
    
    QYTrainingClass *trainingclass=[QYTrainingClass new];
    [trainingclass setClassName:@"1509班"];
    [trainingclass setFloor:6];
    [trainingclass setStuNum:6];
    QYTeacher *teacher1=[QYTeacher new];
    [teacher1 setName:@"佩佩"];
    [trainingclass setTeacher:teacher1];
    
    NSLog(@"培训班 >>> %@",trainingclass);
    
    NSLog(@"老师做自我介绍:");
    
    QYTeacher *teacher=[QYTeacher new];
    [teacher setName:@"佩佩张"];
    [teacher setSex:@"👨"];
    [teacher setAge:30];
    [teacher setHobby:@"打球!"];
    [trainingclass setTeacher:teacher];
    
    NSLog(@"老师 >>> %@",teacher);
    
    
    NSLog(@"学生做自我介绍：\n");
    
    QYStudent *student1=[QYStudent new];
    [student1 setName:@"美美"];
    [student1 setSex:@"女"];
    [student1 setHobby:@"唱歌"];
    [student1 setAge:23];
    [trainingclass setStudents:student1 atIndex:FirstStu];
    
    QYStudent *student2=[QYStudent new];
    [student2 setName:@"丽丽"];
    [student2 setSex:@"女"];
    [student2 setHobby:@"旅游"];
    [student2 setAge:21];
    [trainingclass setStudents:student2 atIndex:SecondStu];
    
    QYStudent *student3=[QYStudent new];
    [student3 setName:@"姗姗"];
    [student3 setSex:@"女"];
    [student3 setHobby:@"跑步"];
    [student3 setAge:19];
    [trainingclass setStudents:student3 atIndex:ThirdStu];
    
    QYStudent *student4=[QYStudent new];
    [student4 setName:@"河河"];
    [student4 setSex:@"男"];
    [student4 setHobby:@"打游戏"];
    [student4 setAge:18];
    [trainingclass setStudents:student4 atIndex:FouthStu];
    
    QYStudent *student5=[QYStudent new];
    [student5 setName:@"香香"];
    [student5 setSex:@"女"];
    [student5 setHobby:@"学习"];
    [student5 setAge:21];
    [trainingclass setStudents:student5 atIndex:FifthStu];
    
    QYStudent *student6=[QYStudent new];
    [student6 setName:@"橙橙"];
    [student6 setSex:@"👩"];
    [student6 setHobby:@"看电影"];
    [student6 setAge:20];
    [trainingclass setStudents:student6 atIndex:LastStu];
    
    
    [trainingclass introduceStu];
    [trainingclass graduted];
    
    return 0;
}
