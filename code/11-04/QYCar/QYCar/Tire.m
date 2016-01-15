//
//  Tire.m
//  QYCar
//
//  Created by qingyun on 15/11/4.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (instancetype)copyWithZone:(NSZone *)zone
{
    Tire *copytire = [[Tire allocWithZone:zone]init];
    copytire.name = [self.name copy] ;
    return copytire;
    
}

@end
