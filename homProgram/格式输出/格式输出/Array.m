//
//  Array.m
//  格式输出
//
//  Created by qingyun on 15/10/27.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Array.h"

@implementation Array

- (NSString *)print:(NSArray *)arr
{
    NSMutableString *str = [NSMutableString stringWithString:@" arr >>[\n"];
    
    for (int i=0; i<[arr count]; i++) {
        [str appendFormat:@"\t%@;\n",arr[i]];
    }
    [str appendString:@"]"];
    return str;
}
@end
