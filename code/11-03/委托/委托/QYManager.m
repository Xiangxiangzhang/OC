//
//  QYManager.m
//  委托
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYManager.h"
#import "QYSecretary.h"

@implementation QYManager

- (void)work
{
    NSLog(@"我是女王，我好忙！");
    
    [self.delegate work];
}

@end
