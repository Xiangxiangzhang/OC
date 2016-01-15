//
//  Person.h
//  CategoryDemo
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,strong)NSString *name;

- (void)move;

@end

@interface Person (Study)

- (void)study;

@end

@interface Person (Work)

- (void)work;

@end

@interface Person (Play)

- (void)playGame;

@end