//
//  QYPrincess.m
//  委托
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYPrincess.h"
#import "QYPrince.h"

@implementation QYPrincess

- (void)sleep
{
    NSLog(@"我要睡觉了，记得叫我哦!");
    
    [self.delegate tellMeTime:6];
}

@end
