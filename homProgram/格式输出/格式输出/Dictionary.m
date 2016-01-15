//
//  Dictionary.m
//  格式输出
//
//  Created by qingyun on 15/10/27.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Dictionary.h"

@implementation Dictionary

- (NSString *)print:(NSDictionary *)dict
{
    NSMutableString *str = [NSMutableString stringWithString:@"dict >>> { \n"];
    NSArray *keys = [dict allKeys];
    
    for (int i=0; i<[keys count]; i++) {
        [str appendFormat:@"\t%@:%@;\n",keys[i],dict[keys[i]]];
    }
    [str appendString:@"}"];
    return str;
    
}
@end
