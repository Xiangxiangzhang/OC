//
//  main.m
//  回调
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "QYMath.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        
        // 4.成员变量也可以访问，并且更改值
        QYMath *math = [[QYMath alloc] init];
        math.a = 10;
        math.b = 100;
        
        [math run];
       
        
        // 5.对于对象来说，局部的对象指针变量在代码块可以对对象进行操作，但是该指针值并不能改变，所以c1虽然是局部变量但是在代码块内部仍然可以通过c1去改变c1指向对象的内容，但是c1本身的值不能改变，与第一种情况并不冲突
        
        Car *c1 = [[Car alloc] init];// c1 指针
        c1.price = 100000;
        
        void (^changold)(void) = ^(void){
            NSLog(@" c1 >> %d",c1.price);
            c1.price = 8888;
            NSLog(@" c1>>%p",c1);
        };
        changold();
        NSLog(@" c1.price:%d -->%p",c1.price,c1);

        
        int no = 66;
        void (^play)(void) = ^{
            NSLog(@"放第%d首歌!",no);
        };
        
        //回调：在某个方法执行完毕之后再去调用事先已经设计好的事件、方法、这样的机制称之为“回调”
        [c1 run:play];
        
        
        
        
        
        
    }
    return 0;
}
