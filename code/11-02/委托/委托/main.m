//
//  main.m
//  委托
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYPrince.h"
#import "QYPrincess.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QYPrince *prince = [[QYPrince alloc]init];
        QYPrincess *princess = [[QYPrincess alloc]init];
        
         princess.delegate = prince;
        
        [princess sleep];
        
        //开启运行循环，就可以让计时器生效了
        [[NSRunLoop currentRunLoop]run];
        
    }
    return 0;
}
