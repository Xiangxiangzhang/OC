//
//  main.m
//  计算数字个数
//
//  Created by qingyun on 15/11/7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+NumberOfStr.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *str = @"qazxsw23e45rft6";
        
        // 调用类方法
        NSUInteger num1 = [NSString numberWithSring:str];
        NSLog(@" num1:%lu",num1);
        
        NSUInteger num2 = [str numberstring];
        NSLog(@" num2:%lu",num2);
        
    }
    return 0;
}
