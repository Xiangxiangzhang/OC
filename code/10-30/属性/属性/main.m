//
//  main.m
//  属性
//
//  Created by qingyun on 15/10/30.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "School.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person1 = [[Person alloc]init];
        
        [person1 setName:@"lele"];
        NSLog(@" personi->name >> %@",[person1 name]);
        
        if ([person1 isHide]){
            NSLog(@"lele,隐身了");
        }
        
        //点表达式实际是对setter getter方法的间接使用
        //[xidada setID:@"asdfg"];
        //person1.ID=@"6666666";//当点表达式当左值使用的时候就是调用 setter 方法
        NSLog(@" ID>> %@",person1.ID);//当点表达式当右值使用的时候就是调用 getter方法
        
        Person *person2 = [[Person alloc]initWithName:@"lele"];
        NSLog(@" person2->name >> %@",[person2 name]);
        person2.name = @"乐乐";   //改名
        NSLog(@" person2->name >>%@",person2.name);
        
        Student *student = [[Student alloc]initWithName:@"鹿晗"];
        student.school.name = @"北京大学";
        //==[[student school] setName:@"北京大学"];对school是getter,对name才是setter
        NSLog(@" student'name:%@,schoolname >> %@",[student name ],student.school.name);
        
        
    }
    return 0;
}
