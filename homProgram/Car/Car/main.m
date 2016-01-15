//
//  main.m
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Tire.h"
#import "Engine.h"

int main(int argc, const char * argv[]) {
    
    Car *car1 = [[Car alloc]initWithBrand:@"大众" andPrice:100000];
    NSLog(@" car'brand:%@ , car'price:%d",[car1 brand],[car1 price]);
    
    Tire *tire1 = [[Tire alloc]initWithPreesure:100.3 andTireDeepth:4.5];
    NSLog(@" tire1'preesure: %.f , tire1'deepth:%.f",[tire1 preesure],[tire1 tireDeepth]);
  
    Engine *eg1 = [[Engine alloc]init];
    NSLog(@" eg1:%@",eg1);
    
    
    
    
    
    return 0;
}
