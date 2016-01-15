//
//  main.m
//  QYCar
//
//  Created by qingyun on 15/10/24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYCar.h"

int main(int argc, const char * argv[]) {
    QYCar *car=[QYCar new];
    QYEngine *engine=[QYEngine new];
    [engine setPower:12.5f];
    [car setEngine:engine];
    QYTire *tire=[QYTire new];
    [car setTire:tire];
    [tire setDeep:4.5f];
    
    [car setName:@"BMW"];
    
    NSLog(@"brand >>> %@",[car name]);//%@ 格式化输出一个对象
    // 如果类没有重写 description方法，在运行时方法调度会去找到父类的description方法，它的默认做法就是返回 “<类名:对象地址>” 这样一个字符串
   
    NSLog(@"car >>> %@",car);//等于 NSLog(@"car >>> %@",[car description]);
    // 也等于 NSString *desc=[car description]; NSLog(@"car >>> %@",desc);
    // 实际 %@ 格式化输出对象时输出的是对象 方法 description 返回的字符串内容
    
    
    
   /* QYCar  *car1=[QYCar new];
    QYEngine *engine1=[QYEngine new];
    [car1  setEngine:engine1];
    [engine1 setPower:15.3f];
    QYTire *tire1=[QYTire new];
    [car1 setTire:tire];
    [tire1 setDeep:3.4f];*/
    
    
    
    return 0;
}
