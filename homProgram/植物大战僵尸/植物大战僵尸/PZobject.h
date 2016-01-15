//
//  Plant.h
//  植物大战僵尸
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PZobject : NSObject
{
    NSString *_name;
    int _life;
    int _attack;
}

+ (instancetype)pzobjWithName:(NSString *)name life:(int)life attack:(int)attack;

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setLife:(int)life;
- (int)life;

- (void)setAttack:(int)attack;
- (int)attack;

@end
