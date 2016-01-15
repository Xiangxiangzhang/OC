//
//  Person.m
//  ReferenceCount
//
//  Created by qingyun on 15/10/28.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)jump
{
    NSLog(@"jumping......");
}

- (void)setName:(NSString *)name{
    _name=name;
}

@end
