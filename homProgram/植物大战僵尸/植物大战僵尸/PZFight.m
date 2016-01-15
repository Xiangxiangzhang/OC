//
//  PZFight.m
//  植物大战僵尸
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "PZFight.h"
#import "Plant.h"
#import "Zomble.h"


@implementation PZFight

- (void)setPlant:(Plant *)plant
{
    _plant = plant;
}
- (Plant *)plant
{
    return _plant;
}

- (void)setZomble:(Zomble *)zomble
{
    _zomble=zomble;
}
- (Zomble *)zombie
{
    return _zomble;
}

- (void)fight
{
    _round = 1;
    for (int i=0; i<_round; i++) {
        [_plant setLife:([_plant life]-[_zomble attack])];
        [_zomble setLife:([_zomble life]-[_plant attack])];
    }
    if ([_plant life] <= 0) {
        NSLog(@"%@ died", [_plant name]);
    }
    if ([_zomble life] <= 0) {
        NSLog(@"%@ died", [_zomble name]);
    }
    
}

@end
