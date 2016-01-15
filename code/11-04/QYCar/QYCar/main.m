//
//  main.m
//  QYCar
//
//  Created by qingyun on 15/11/4.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Tire.h"
#import "GeneralCar.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Car *benz = [[Car alloc]init];
        benz.brand = @"奔驰";
        
        Tire *tire = [[Tire alloc]init];
        tire.name = @"米其林";
        benz.tire = tire;
                
        //拷贝一辆车
        Car *benz1 = benz;//浅拷贝
        Car *benz2 = [[Car alloc]init];//深拷贝
        benz2.brand = benz.brand;
        benz2.tire = benz.tire;
        
        //调用copy方法拷贝
        Car *car4 = [benz copy];
        //copy方法并不是实现对象拷贝的真正方法，它需要调用copyWitnZone:来拷贝对象，这个方法在NSCoping协议中有规定，所以要想调用copy需要遵循NSCopying协议并且实现copyWithZone:这个方法
        
        NSLog(@" benz >> %p,car4 >> %p",benz,car4);
        NSLog(@" benz'brand >> %@,benz'tire >> %@",benz.brand,benz.tire);
        NSLog(@" car4'brand >>> %@,car4'tire >> %@",car4.brand,car4.tire);
        
        benz.tire.name = @"邓禄普";
        car4.tire.name = @"普利司通";
        NSLog(@"benz.tire >> %@",benz.tire.name);
        NSLog(@"car4.tire >> %@",car4.tire.name);
        
        //在继承中使用拷贝
        GeneralCar *cruze = [[GeneralCar alloc]init];
        cruze.price = 100000;
        cruze.tire = [[Tire alloc]init];
        cruze.tire.name = @"固特异";
        cruze.brand = @"大众";
        GeneralCar *cruze1 = [cruze copy];
        NSLog(@" cruze1 >> %d %@ %@",cruze1.price,cruze1.tire.name,cruze1.brand);
        
    }
    return 0;
}
