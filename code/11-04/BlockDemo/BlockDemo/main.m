//
//  main.m
//  BlockDemo
//
//  Created by qingyun on 15/11/4.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        //代码块的声明
        //代码块返回值 （^代码块变量名字）（代码块参数,...）= ^(代码块参数,...){代码块主体}
        void (^blockName)(void) = ^(void){
            printf("Good moring!\n");
            NSLog(@"Everybody!");
        };
        
        //代码块的使用,直接使用
        blockName();
        
        //代码块内联
        Student *stu = [[Student alloc]init];
        
        //[stu saySomething:blockName];
        
        [stu saySomething:^(void){
            NSLog(@"唱首歌");
            NSLog(@"唱首歌");
            int a=0;
            int b=9;
            int result = a+b;
            NSLog(@"result %d",result);
            NSArray *arr = [[NSArray alloc]init];
            arr = @[@"asd",@"dd",@"asd"];
            [arr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                NSLog(@"index:%ld,desc:%@",idx,obj);
            }];
        }];
        
        [stu saySomethingToo:^{
            NSLog(@"明白了，好开心");
        }];
        
        int (^add)(int,int) = ^int(int a,int b){
            return a+b;
        };
        [stu math:add];
        
       [stu math:^int(int a,int b){
           NSLog(@"11月4号了");
           return 100;
       }];
        
        
        
    }
    return 0;
}
