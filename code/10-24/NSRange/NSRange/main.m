//
//  main.m
//  NSRange
//
//  Created by qingyun on 15/10/27.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //结构体的访问方式 有三种（1.2是c提供的方式）
    
    //1.（length 和location 是NSRange结构体的成员，length 和location是在Foundation中就定义好的，所以可以直接拿来用）
    NSRange range1;
    range1 .location = 10;
    range1.length=5;
    
    //2.聚合方式：定义结构体的时候直接使用变量(location,length)
    NSRange range2 = {10,5};
    
    //3.Cocoa提供的函数
    //NSStringFromRange(NSRange range)这个函数接收一个NSRange结构体，返回该结构体的描述字符串
    NSLog(@"range3 >> %@",NSStringFromRange(NSMakeRange(59, 110)));
    NSLog(@"rang4 >> %@",NSStringFromRange((NSRange){100,20}));
    
    //4.
    NSRange  range5 = NSRangeFromString(@"{100,300}");
    NSLog(@"rang5 >> %@",NSStringFromRange(range5));
//    NSString* str = NSStringFromRange(range5);
//    NSLog(@"%@",str);
    
    
    
    return 0;
}
