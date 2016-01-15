//
//  QYMath.h
//  Block的内联用法
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

//int (^mathBlock)(int,int)
typedef int (^MathBlock)(int,int);

@interface QYMath : NSObject

@property (nonatomic) int a;
@property (nonatomic) int b;

- (instancetype)initWithBlock:(MathBlock)block;

- (void)run;


@end
