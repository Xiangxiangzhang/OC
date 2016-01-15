//
//  PZFight.h
//  植物大战僵尸
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Plant;
@class Zomble;

@interface PZFight : NSObject
{
    Plant *_plant;
    Zomble *_zomble;
    int _round;//几个回合
}

- (void)setPlant:(Plant *)plant;
- (Plant *)plant;

- (void)setZomble:(Zomble *)zomble;
- (Zomble *)zombie;

- (void)fight;

@end
