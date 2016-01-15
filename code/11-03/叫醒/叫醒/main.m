//
//  main.m
//  叫醒
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Teacher.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *student = [[Student alloc]init];
        student.name=@"xiangxiang";
        student.time=6;
        
        [student sleep];
                
        //开启运行循环，就可以让计时器生效了
        [[NSRunLoop mainRunLoop]run];
        
        
    }
    return 0;
}
