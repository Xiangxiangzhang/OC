//
//  main.m
//  Block的内联用法
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYMath.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QYMath *math = [[QYMath alloc] initWithBlock:^int(int a,int b){
            NSLog(@" reault >> %d",a+b);
            return a+b;
        }];
        
         math.a=100;
         math.b=200;
         [math run];
    }
    return 0;
}
