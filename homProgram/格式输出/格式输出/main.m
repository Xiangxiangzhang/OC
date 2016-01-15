//
//  main.m
//  格式输出
//
//  Created by qingyun on 15/10/27.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Array.h"
#import "Dictionary.h"


int main(int argc, const char * argv[]) {
    
    Array *array=[Array new];
    NSArray *arr=@[@"xiangxiang",@"juanjuan",@"lili",@"huahua"];
    NSString *str = [array print:arr];
    NSLog(@"%@",str);
    
    Dictionary *dictionary = [Dictionary new];
    NSDictionary *dict = @{@"name":@"lele",@"age":@"18",@"sex":@"boy"};
    NSString *str1 = [dictionary print:dict];
    NSLog(@"%@",str1);
    
    
    return 0;
}
