//
//  main.m
//  Copy
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        //1.NSArray ,不可变数组 -----> 浅拷贝
        NSArray *arr = @[@"hello",@"world",@"qingyun"];
        NSArray *arr1 = [arr copy];
        
        NSLog(@" arr :%p,%@",arr,arr);
        NSLog(@" arr1 :%p,%@",arr1,arr1);
        
        //2.NSMutableArray,可变数组 ———> 深拷贝
        NSMutableArray *arr2 = [NSMutableArray arrayWithArray:arr];
        NSArray *arr3 = [arr2 copy];
        
        NSLog(@" arr2 :%p,%@",arr2,arr2);
        NSLog(@" arr3 :%p,%@",arr3,arr3);
        
        //3.不可变字符串，浅拷贝
        NSString
        
        
        
    }
    return 0;
}
