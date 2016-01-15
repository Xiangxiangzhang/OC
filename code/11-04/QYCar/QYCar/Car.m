//
//  Car.m
//  QYCar
//
//  Created by qingyun on 15/11/4.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Car.h"
#import "Tire.h"

@implementation Car

//对象拷贝版本 4
//在调用copy的时候，copy会负责构造一个NSZone这样类型的空间来专门存放拷贝之后对象的存放
//使用allocWithZone:这个方法就可以使用传入zone来为对象开辟空间，它比alloc的性能更高，并且更适合拷贝出来的对象的内存管理
- (instancetype) copyWithZone:(NSZone *)zone
{
    Car *copyCar = [[[self class] allocWithZone:zone]init];
    copyCar.brand = [self.brand copy];
    copyCar.tire = [self.tire copy];
    return copyCar;
}

//对象拷贝版本 1
//- (instancetype) copyWithZone:(NSZone *)zone
//{
//    Car *copyCar = [[Car alloc]init];
//    copyCar.brand = self.brand;
//    copyCar.tire = self.tire;
//    return copyCar;
//}

//对象拷贝版本 2

//- (instancetype) copyWithZone:(NSZone *)zone
//{
//    //Car *copyCar = [[Car alloc]init];
//    Car *copyCar = [[Car allocWithZone:zone]init];
//    
//    copyCar.brand = self.brand;
//    copyCar.tire = self.tire;
//    return copyCar;
//}

//对象拷贝版本 3
//- (instancetype) copyWithZone:(NSZone *)zone
//{
//    Car *copyCar = [[Car allocWithZone:zone]init];
//    
//    copyCar.brand = [self.brand copy];
//    copyCar.tire = [self.tire copy];
//    return copyCar;
//}


@end
