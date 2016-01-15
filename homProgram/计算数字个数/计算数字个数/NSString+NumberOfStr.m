//
//  NSString+NumberOfStr.m
//  计算数字个数
//
//  Created by qingyun on 15/11/7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "NSString+NumberOfStr.h"

@implementation NSString (NumberOfStr)

+ (NSUInteger)numberWithSring:(NSString *)string
{
    NSUInteger count = 0;
    
    for (NSUInteger i=0; i<[string length]; i++) {
        
        unichar c = [string characterAtIndex:i];
        
        if ((c>='0') && (c<='9')) {
            count ++;
        }
    }
    return count;
}

- (NSUInteger)numberstring
{
    NSUInteger count = 0;
    
    for (NSUInteger i=0; i<[self length]; i++) {
        
        unichar c = [self characterAtIndex:i];
        
        if ((c>='0') && (c<='9')) {
            count ++;
        }
    }
    return count;
    
}

@end
