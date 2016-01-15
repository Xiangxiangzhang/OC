//
//  main.m
//  植物大战僵尸
//
//  Created by qingyun on 15/11/6.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Plant.h"
#import "Zomble.h"
#import "PZFight.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Plant *pie = [Plant pzobjWithName:@"豌豆射手" life:100 attack:10];
        Zomble *normal = [Zomble pzobjWithName:@"普通僵尸" life:80 attack:20];
        
        PZFight *fight = [PZFight new];
        [fight setPlant:pie];
        [fight setZomble:normal];
        [fight fight];
        
    }
    return 0;
}
