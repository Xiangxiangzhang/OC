//
//  main.m
//  Person
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Man.h"
#import "Woman.h"
#import "Engineer.h"

int main(int argc, const char * argv[]) {
    
    //alloc 分配的地址和init之后的地址有可能是不一样，所以不要分开来写
    //初始化方法的作用就是为对象的成员变量设置一些初始值，保证对象在创建之后就可以直接使用
    Man *jack = [[Man alloc] initWithName:@"lele" andAge:18];
    NSLog(@" name:%@ , age:%d",[jack name],[jack age]);
    
    //造户口的时候
    Man *man1 = [[Man alloc] initWithName:@"aa" andAge:18];
    NSLog(@" name:%@, age:%d",[man1 name],[man1 age]);
    
    //出生的时候
    Man *man2 = [[Man alloc] initWithAge:1 andBlood:@"B"];
    NSLog(@" age:%d, blood:%@",[man2 age],[man2 blood]);
    
    //结婚了
    Woman *woman1 =[[Woman alloc]init];
    Man *man3 = [[Man alloc] initWithWife:woman1 andID:@"41142319877976"];
    NSLog(@" wife:%@, ID:%@",[man3 wife],[man3 id1]);
    
    //在继承中使用初始化
    Engineer *eg = [[Engineer alloc]initWithTechnology:@"objc" andEX:9];
    NSLog(@"eg'name:%@,age:%d,technology:%@,ex:%d",eg.name,eg.age,[eg technology],[eg EX]);
    
    
   
    return 0;
}
