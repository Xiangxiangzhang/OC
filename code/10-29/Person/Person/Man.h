//
//  Man.h
//  Person
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Woman;

@interface Man : NSObject

{
    int _age;
    NSString *_name;
    NSString *_blood;
    NSString *_ID;
    Woman *_wife;
    
}

- (int)age;

- (NSString *)name;

- (NSString *)blood;

- (NSString *)id1;

- (Woman *)wife;

- (instancetype)initWithAge:(int)age;

- (instancetype)initWithName:(NSString *)name andAge:(int)age;

- (instancetype)initWithAge:(int)age andBlood:(NSString *)blood;

- (instancetype)initWithWife:(Woman *)wife andID:(NSString *)id1;


@end
