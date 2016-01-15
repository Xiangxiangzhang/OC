//
//  main.m
//  冒泡排序
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+Sort.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        
//        NSArray *arr = @[@"xiangxiang",@"shui4",@"yangwu",@"cheng66"];
//        NSLog(@" %@",arr);
//        
//        //定义一个代码块变量，按字符串的比较规则来比较
//        NSComparator cmptr =^(id obj1,id obj2){
//            NSString *str1 = (NSString *)obj1;
//            NSString *str2 = (NSString *)obj2;
//            
//            return [str1 compare:str2];
//        };
        
        //调用系统定义的数组排序方法
//        NSArray *arrSorted = [arr sortedArrayUsingComparator:cmptr];
//        NSLog(@"%@",arrSorted);
        
        //调用自己添加的新的排序方法
//        NSArray *SortArr = [arr sortedArrayUsingMyBlock:cmptr];
//        NSLog(@" SortArr :%@",SortArr);
//
        Student *stu1 = [[Student alloc] initWithNmae:@"xiangxiang" andAge:18];
        Student *stu2 = [[Student alloc] initWithNmae:@"huahua4" andAge:17];
        Student *stu3 = [[Student alloc] initWithNmae:@"cheng6zi" andAge:15];
        Student *stu4 = [[Student alloc] initWithNmae:@"5hei" andAge:16];
        
        NSArray *asArr = @[stu1,stu2,stu3,stu4];
        NSLog(@" asArr:%@",asArr);
        NSComparator cmp = ^(id obj1,id obj2){
            
            Student *stu5 = (Student *)obj1;
            Student *stu6 = (Student *)obj2;
            
            if (stu5.age>stu6.age) {
                return  NSOrderedAscending;
            }
            else if ((stu5.age == stu6.age)){
                return NSOrderedSame;
            }
            else{
                return NSOrderedDescending;
            }
        
        };
        
        NSArray *stuSort = [asArr sortedArrayUsingMyBlock:cmp];
        NSLog(@" %@",stuSort);
    }
    return 0;
}
