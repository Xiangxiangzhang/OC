//
//  main.m
//  NSSet
//
//  Created by qingyun on 15/10/28.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSArray *arr = @[@"xiangxiang",@"juanjuan",@"juanjuan",@"youyou"];
    
    //NSSet 是无序的集合，最大的特征是集合中的元素不重复
    NSSet *set = [NSSet setWithArray:arr];
    NSLog(@" set >> %@",set);
    
    NSString *name = [set anyObject];
    NSLog(@"name >>> %@",name);
    
    for (NSString *str in set ) {
        NSLog(@" str >> %@",str);
    }
    
    //常规操作
    //判断集合中对象的个数
    NSSet *set1 = [[NSSet alloc]initWithObjects:@"one",@"two",@"three",@"four",@"five", nil];
    NSUInteger num = set1.count;
    NSLog(@" num >> %lu",(unsigned long)num);
    
    //判断两个集合是否相等
    NSSet *set2 = [[NSSet alloc]initWithObjects:@"two",@"three", nil];
    if ([set1 isEqualToSet:set2]) {
        NSLog(@" 相等");
    }else{
        NSLog(@"不相等");
    }
    //判断set1是否和set2有交集
    if ([set1 intersectsSet:set2]) {
        NSLog(@"有");
    }else{
        NSLog(@"无");
    }
    
    //判断两个集合set2是否是set1的子集合
    if ([set2 isSubsetOfSet:set1]) {
        NSLog(@"是子集合");
    }else{
        NSLog(@"不是子集合");
    }
    
    //NSMutableSet
    //集合转换为数组
    NSArray *array = [set allObjects];
    //添加元素
    NSMutableSet *set3 = [[NSMutableSet alloc] init];
    [set3 addObject:@"one"];
    [set3 addObject:@"two"];
    [set3 addObject:@"three"];
    [set3 addObject:@"four"];
    [set3 addObject:@"ten"];
    NSLog(@" set3 >> %@",set3);
    NSMutableSet *set4 = [[NSMutableSet alloc] initWithObjects:@"one",@"two", nil];
    NSLog(@" set4 >> %@",set4);
    
    
     //将set4的元素添加到set3中（合集）
     [set3 unionSet:set4];
     NSLog(@"set3 >> %@",set3);
    
     //删除相同的元素(补集)删除set3中与set4相同的元素
     [set3 minusSet:set4];
     NSLog(@" set3 >> %@",set3);
    
     //删除元素所有的元素
     [set3 removeAllObjects];
     NSLog(@" set3 >> %@",set3);
    
     //交集（两个集合中的相同元素）
     [set4 intersectSet:set3];
     NSLog(@" set1 >> %@",set4);
    
     //用set4里的元素代替set3中的元素（此时set3与set4中元素相等）
     [set3 setSet:set4];
     NSLog(@"set3 >> %@",set3);
    
    
    
    
    
    
    
    
    
    return 0;
}
