//
//  Baby.m
//  Baby
//
//  Created by qingyun on 15/11/6.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Baby.h"
#import "Look.h"

@implementation Baby

- (void)cry
{
    NSLog(@"我哭了!");
    [self.delegate hold];
}

@end
