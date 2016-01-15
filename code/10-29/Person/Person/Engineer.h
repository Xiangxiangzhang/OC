//
//  Engineer.h
//  Person
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Man.h"

@interface Engineer : Man
{
    NSString *_technology;
    int _EX;
    double _salary;
}

- (NSString *)technology;

- (int)EX;

- (instancetype)initWithTechnology:(NSString *)technology andEX:(int)EX;

@end
