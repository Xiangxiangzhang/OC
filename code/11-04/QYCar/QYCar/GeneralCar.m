//
//  GeneralCar.m
//  QYCar
//
//  Created by qingyun on 15/11/4.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "GeneralCar.h"
#import "Tire.h"

@implementation GeneralCar

- (instancetype)copyWithZone:(NSZone *)zone
{
    GeneralCar *generalCarCopy =[super copyWithZone:zone];
    generalCarCopy.price = self.price;
    
    return generalCarCopy;
}

@end
