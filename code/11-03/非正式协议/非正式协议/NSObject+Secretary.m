//
//  NSObject+Secretary.m
//  非正式协议
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "NSObject+Secretary.h"

@implementation NSObject (Secretary)

- (void)phoneCall:(NSString *)something
{
    NSLog(@"我已经告诉经理事情了,%@",something);
}

- (void)bookTicket
{
    NSLog(@"我已经订好票了");
}

@end
