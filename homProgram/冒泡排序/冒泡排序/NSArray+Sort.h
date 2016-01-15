//
//  NSArray+Sort.h
//  冒泡排序
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

//为NSArray 创建一个类别:Sort
@interface NSArray (Sort)

- (NSArray *)sortedArrayUsingMyBlock:(NSComparator)cmptr;

@end
