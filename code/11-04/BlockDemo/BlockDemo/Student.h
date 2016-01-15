//
//  Student.h
//  BlockDemo
//
//  Created by qingyun on 15/11/4.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int (^block1) (int,int);
typedef void (^blockType)(void);//此时的blockType不再是代码块的名字,而是代表代码块的类型

@interface Student : NSObject

@property (nonatomic,strong) blockType blockVar;

- (void)saySomething:(blockType)block;

- (void)saySomethingToo:(blockType)block;          //void (^blockType)(void)相当于————>(void (^)(void))block;

- (void)math:(block1)block;

@end
