
//
//  NSObject+Secretary.m
//  委托
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "NSObject+Secretary.h"

@implementation NSObject (Secretary)

- (void)phoneCall:(NSString *)something
{
    NSLog(@"I have told manager the thing :%@",something);
}

- (void)bookTicket
{
    NSLog(@"I have booked the ticket");
}

@end
