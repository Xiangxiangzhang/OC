//
//  QYMath.m
//  Block的内联用法
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYMath.h"

@implementation QYMath

- (instancetype)initWithBlock:(MathBlock)block
{
    if (self = [super init]) {
        NSLog(@"block >>> %@", block);
        block = block;
    }
    return self;
}

- (void)run
{
    NSLog(@" a>>> %d, b >>> %d",_a,_b);
    void(^test)(void) = ^{
        _a++;
        _b++;
    };
    test();
    NSLog(@" a== %d, b== %d",_a,_b);
}
@end
