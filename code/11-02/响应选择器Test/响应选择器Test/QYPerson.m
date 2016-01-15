//
//  QYPerson.m
//  响应选择器Test
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYPerson.h"

@implementation QYPerson

- (instancetype)initWithName:(NSString *)name andIdentify:(NSString *)identify andAge:(int)age
{
    if (self = [super init]) {
        _name=name;
        _identify=identify;
        _age=age;
    }
    return self;
}

- (void)sing
{
    NSLog(@"我们的明天~~~");
}

@end
