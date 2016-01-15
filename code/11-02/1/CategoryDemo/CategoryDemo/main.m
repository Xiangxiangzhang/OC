//
//  main.m
//  CategoryDemo
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+Secret.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
       //1.将类的实现代码分散到多个不同文件或框架中
       //可以看到Person类的头文件中有大量类别的声明，而实现文件却是分开的，这就是分散实现的做法
        Person *per = [[Person alloc]init];
        per.name = @"鹿晗";
        
        [per move];
        [per work];
        [per study];
        [per playGame];
    
        // 2.创建私有方法的前向声明引用
        [per love];
        
        //3.非正式协议:就是对NSObject 类扩展的类别称之为非正式协议，我们自己一般不会使用非正式协议，平时使用到正式协议都是官方的，比如：NSKeyValueCoding
        
        
        
        
        
        
    }
    return 0;
}
