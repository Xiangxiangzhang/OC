//
//  main.m
//  Blocks
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
     // 一:代码块也是一个变量，只不过该变量内存空间中存储的是一个函数体
        void (^blockVar)(void);
        
        //1.如果返回值和参数都是空的，可以省略
        blockVar = ^{
            NSLog(@"你好");
        };
        //直接调用
        blockVar();
        
        //2.
         int (^block1)(int);
        
        block1 = ^int(int a){
            NSLog(@" a >> %d",a);
            return a;
        };
        block1(12);
        
        //3.typedef 定义代码块的类型，代码块的类型是由代码块的参数类型和返回值类型来决定的
        typedef int (^blockType)(int);
        
        blockType block2;
        block2 = ^int(int x){
            NSLog(@" x >> %d",x);
            return 1;
        };
        block2(23);
        
        
        // 二:内联用法
        
        NSArray *names = @[@"xiangxiang",@"huahua",@"youyou",@"juanjuan"];
        NSLog(@" names >> %@",names);
        NSArray *sortedNames = [names sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            return [obj1 compare:obj2];
        }];
        NSLog(@" sortedNames >> %@",sortedNames);
        
        typedef NSComparisonResult (^ComparisonBlock)(id,id);
        ComparisonBlock cpBlock,cpBlock1;
      //  cpBlock = ^NSComparisonResult(Car *obj1,Car *obj2){
      //  return [@(obj1.price) compare:@(obj2.price)];//由小到大
      //    };
//        cpBlock1 = ^NSComparisonResult(Car *obj1,Car *obj2){
//            return [@(obj2.price) compare:@(obj1.price)];//由大到小
//        };
        cpBlock1 = ^NSComparisonResult(id obj1,id obj2){
            return [[obj2 valueForKey:@"price"] compare:[obj1 valueForKey:@"price"]];//由大到小
        };
        Car *c1 = [[Car alloc] init];
        c1.price = 1000;
        Car *c2 = [[Car alloc] init];
        c2.price = 11111;
        Car *c3 = [[Car alloc] init];
        c3.price = 12222;
        Car *c4 = [[Car alloc] init];
        c4.price = 13333;
        
        NSArray *cars = @[c1,c2,c3,c4];
        NSArray *sorterdCars = [cars sortedArrayUsingComparator:cpBlock1];
        NSLog(@" sorterdCars >> %@",sorterdCars);
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
