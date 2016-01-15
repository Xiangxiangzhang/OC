//
//  Engineer.m
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Engineer.h"
#import "Salary.h"

@implementation Engineer

+ (instancetype)engineerWithDict:(NSDictionary *)dict
{
    Engineer *eg = [[Engineer alloc] init];
    [eg setValuesForKeysWithDictionary:dict];
    return eg;
}

- (NSArray *)salarys
{
    Salary *s1 = [[Salary alloc] initWithMonth:7 andMoney:10000];
    Salary *s2 = [[Salary alloc] initWithMonth:8 andMoney:12000];
    Salary *s3 = [[Salary alloc] initWithMonth:9 andMoney:13000];
    return @[s1, s2, s3];
}
@end
