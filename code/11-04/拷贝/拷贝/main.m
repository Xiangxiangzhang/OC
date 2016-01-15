//
//  main.m
//  拷贝
//
//  Created by qingyun on 15/11/4.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableString *stu1 = [[NSMutableString alloc]initWithString:@"xiangxiang"];
        NSMutableString *stu2 = [[NSMutableString alloc]initWithString:@"luhan"];
        
        NSArray *arr1 = @[stu1,stu2];
        NSArray *arr2 = [arr1 copy];
        
        NSLog(@" arr1 >> %p-> %@",arr1,arr1);
        NSLog(@" arr2 >> %p-> %@",arr2, arr2);
        
        [arr2[0] appendString:@"juanjuan"];
        NSLog(@" arr1:%p%@\n, arr2:%p%@",arr1,arr1,arr2,arr2);
        
//        NSArray *arr3 = [[NSArray alloc]initWithArray:arr1 copyItems:NO];
//        
//
//            NSLog(@" origin:%p,%@\n",arr3,arr3);
//        }
        
        NSArray *arr3 = [[NSArray alloc]initWithArray:arr1 copyItems:YES];
        
        
            NSLog(@" deepCopy:%p,%@\n",arr3,arr3);
        
        
        
        
    }
    return 0;
}
