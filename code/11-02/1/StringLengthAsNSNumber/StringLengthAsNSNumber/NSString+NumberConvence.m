//
//  NSString+NumberConvence.m
//  StringLengthAsNSNumber
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "NSString+NumberConvence.h"

@implementation NSString (NumberConvence)

- (NSString *)lengthAsNumber
{
    NSUInteger len = [self length];
    return @(len);
}

- (void)eat
{
    NSLog(@"吃书");
}

@end
