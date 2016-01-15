//
//  Car.h
//  QYCar
//
//  Created by qingyun on 15/11/4.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Tire;
@interface Car : NSObject <NSCopying>

@property (nonatomic,strong) NSString *brand;

@property (nonatomic,strong) Tire *tire;

@end
