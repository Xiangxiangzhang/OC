//
//  xiaoming.m
//  看电影
//
//  Created by qingyun on 15/11/7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Xiaoming.h"
#import "Xiaoqiang.h"

@implementation Xiaoming

- (void)WantTo
{
    NSLog(@"我想去看电影");
    
    double price = [self.delegate TicksPrice];
    int num = [self.delegate TicksNum];
    
    if ((price>70) && (num<2)) {
        NSLog(@"不去看，太贵啦，还没那么多票");
    }else{
        NSLog(@"好，去看电影！");
    }
}

@end
