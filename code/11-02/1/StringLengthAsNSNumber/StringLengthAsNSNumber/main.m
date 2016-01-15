//
//  main.m
//  StringLengthAsNSNumber
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+NumberConvence.h"
#import "TestClass.h"
#import "TestClass+DoOtherThing.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *strArr = @[@"abc",[NSString stringWithFormat:@"I'm zhangxiangyu"],[[NSString alloc]initWithContentsOfFile:@"/Users/qingyun/Desktop/张香玉/OC/code/11-02/1.txt" encoding:NSUTF8StringEncoding error:NULL]];
       
        NSMutableArray *lengthArr = [NSMutableArray array ];
 
        //类别是对类的扩展，类别中的方法可以像类中其他的方法一样直接使用
        //一般做法遍历
//        for (NSString *str in strArr) {
//            NSUInteger len= [str length];
//            [lengthArr addObject:@(len)];//装箱
//        }
        
        //用类别中的方法
        for (NSString *str in  strArr) {
            [lengthArr addObject:[str lengthAsNumber]];
            
            [str eat];  //为类添加新的行为
        }
        NSLog(@" length >> %@",lengthArr);
        
        //类别方法的冲突
        TestClass *tc = [[TestClass alloc]init];
        [tc doThing];
        
    }
    return 0;
}
