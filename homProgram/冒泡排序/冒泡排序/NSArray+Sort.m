//
//  NSArray+Sort.m
//  冒泡排序
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "NSArray+Sort.h"

@implementation NSArray (Sort)

- (NSArray *)sortedArrayUsingMyBlock:(NSComparator)cmptr
{
    NSUInteger i,j;
    
    NSMutableArray *mutableArr = [self mutableCopy];
    
    //冒泡算法
    for (i = 0; i<[self count]-1; i++) { //多少次比较
        for (j=0; j<[self count]-1-i; j++) { //每次比较的次数
            //判断代码块的返回值，如果是递增顺序(递减:NSOrderedDescending)，则交换两个位置的对象
            if (cmptr ([mutableArr objectAtIndex:j],[mutableArr objectAtIndex:j+1] ) == NSOrderedAscending) {
                [mutableArr exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
    return  (NSArray *)mutableArr;
    
}


@end
