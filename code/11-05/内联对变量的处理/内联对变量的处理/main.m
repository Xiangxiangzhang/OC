//
//  main.m
//  内联对变量的处理
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int c=100;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        int a = 100;
        
        void(^block1)(int) = ^(int x){
            NSLog(@" x= %d",x);
            x+=1;
            NSLog(@" x >> %d",x);
        };
        block1(a);
        
    // 1.⚠️⚠️⚠️⚠️⚠️⚠️⚠️ a 是局部变量 在代码块内部使用局部变量的时候会将局部变量当做常量来对待，直接使用定义代码块时该变量的值
        a = 999;
        void (^block2)(void) = ^{
            NSLog(@"a== %d",a);
        };
        a = 888;
        block2();
        
        // 2.如果想让局部变量可以在代码块中被更改，可以使用__block
        __block int b = 1000;
        void (^Block3)(void) = ^{
            NSLog(@"b === %d", b);
            b += 1;
            NSLog(@"b === %d", b);
        };
        Block3();
        
        //3. ⚠️⚠️⚠️⚠️⚠️⚠️⚠️ 全局变量 和 静态局部变量可以直接在代码块中使用并且更改其值
        static int d = 1111;
        void (^Block4)(void) = ^{
            NSLog(@"c === %d", c);
            c += 19999;
            NSLog(@"c === %d", c);
            
            NSLog(@"d === %d", d);
            d += 19999;
            NSLog(@"d === %d", d);
        };
        Block4();
        
        // 4.成员变量也可以访问，并且更改值
        //5.(具体程序————>回调)
        
    }
    return 0;
}
