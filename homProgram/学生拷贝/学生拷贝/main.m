//
//  main.m
//  学生拷贝
//
//  Created by qingyun on 15/11/7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *stu1 = [[Student alloc] initWithName:@"xiangxiang" andAge:18 andBooks:@[@"C",@"OC",@"JAVA"]];
        
        NSLog(@"%p  ,%@",stu1,stu1);
        
        Student *stu2 = [stu1 copy];
        NSLog(@"%p  ,%@",stu2,stu2);
        
        
    }
    return 0;
}
