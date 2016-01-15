//
//  Plant.m
//  植物大战僵尸
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "PZobject.h"

@implementation PZobject

+ (instancetype)pzobjWithName:(NSString *)name life:(int)life attack:(int)attack
{
    PZobject *p = [PZobject new];
    [p setName:name];
    [p setLife:life];
    [p setAttack:attack];
    return p;
}

- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}

- (void)setLife:(int)life
{
    life = life;
}
- (int)life
{
    return _life;
}

- (void)setAttack:(int)attack
{
    attack = attack;
}
- (int)attack
{
    return _attack;
}
@end
