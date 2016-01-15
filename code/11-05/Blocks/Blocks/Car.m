//
//  Car.m
//  Blocks
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Car.h"

@implementation Car

- (NSString *)description
{
    return [NSString stringWithFormat:@"%d Car",_price];
}

- (void)run:(void (^)(void))block
{
    NSLog(@"跑起来!");
    block();
}

@end
