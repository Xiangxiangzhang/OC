//
//  Engineer.m
//  Person
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Engineer.h"

@implementation Engineer

- (NSString *)technology
{
    return _technology;
}

- (int)EX
{
    return _EX;
}

- (instancetype)initWithTechnology:(NSString *)technology andEX:(int)EX
{
    //在子类中调用
    if (self = [super initWithName:@"lele" andAge:18]) {
        _technology=technology;
        _EX=EX;
    }
    return self;
}
@end
