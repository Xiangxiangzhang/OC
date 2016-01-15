//
//  main.m
//  NSPredicateDemo
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *arr = @[@{
                             @"name":@"xiangxiang",
                             @"salary":@19000,
                             @"months":@[@{@"money":@20000},@{@"money":@12000}]
                             },
                         @{
                             @"name":@"huahua",
                             @"salary":@11000,
                             @"months":@[@{@"money":@21000},@{@"money":@18000}]
                             },
                         @{
                             @"name":@"juanjuan",
                             @"salary":@13000,
                             @"months":@[@{@"money":@21000},@{@"money":@10000}]
                             },
                         @{
                             @"name":@"youxxyou",
                             @"salary":@14000,
                             @"months":@[@{@"money":@12000},@{@"money":@21000}]
                             },
                         ];
        //1.关系运算符在谓词中的使用
        // > < >= <= != ==
        NSPredicate *pre1 = [NSPredicate predicateWithFormat:@"salary >=13000"];
        NSLog(@"result1 --->%@",[arr filteredArrayUsingPredicate:pre1]);
       
        //2.逻辑运算符
        // AND(&&) OR(||)
        NSPredicate *pre2 = [NSPredicate predicateWithFormat:@"salary>10000 AND salary<13000"];
        NSLog(@" result2--->%@",[arr filteredArrayUsingPredicate:pre2]);
        
        //3.向谓词发消息
        //ALL (所有的元素都要满足条件) ANY(其中任意一个)
        NSPredicate *pre3 = [NSPredicate predicateWithFormat:@"ANY salary>13000 AND ALL salary<1000000"];
        NSLog(@" result3--->%hhd",[pre3 evaluateWithObject:arr]);
        
        //4.范围查找
        //IN(在指定几个结果中匹配) BETWEEN（在指定的起始范围内查找）
        NSPredicate *pre4 =([NSPredicate predicateWithFormat:@"salary IN {19000,30000}"]);
        NSLog(@" result4--->%@",[arr filteredArrayUsingPredicate:pre4]);
        
        NSPredicate *pre5 = [NSPredicate predicateWithFormat:@"salary BETWEEN {13000,14000}"];
        NSLog(@" result5---> %@",[arr filteredArrayUsingPredicate:pre5]);
        
        //5.用谓词对字符串进行操作
        //BEGINSWITH(开始) ENDSWITH(结尾) CONTAINS(包含) LIKE(像)
        //[cd] c不区分大小写 d不区分重音符号或者音调符号
        NSPredicate *pre6 = [NSPredicate predicateWithFormat:@"name BEGINSWITH 'xi'"];
        NSLog(@" result6--->%@",[arr filteredArrayUsingPredicate:pre6]);
        //*代表任意字符  ?任意一个字符
        NSPredicate *pre7 = [NSPredicate predicateWithFormat:@"name LIKE [cd] '*xx*'"];
        NSLog(@" result7--->%@",[arr filteredArrayUsingPredicate:pre7]);
        
        //6.谓词模板
        //格式化谓词:键用%k格式化，值用对象的格式化
        NSString *key = @"salary";
        NSNumber *value = @13000;
        NSPredicate *pre8 = [NSPredicate predicateWithFormat:@"ANY %K>%@ AND ALL salary<%@",key,value,@1000000];
        NSLog(@" result8---> %hhd",[pre8 evaluateWithObject:arr]);
        
        // predTheme 不是一个有效的谓词对象，只是一个模板，pred9才是由谓词模板创建的谓词对象
        NSPredicate *predTheme = [NSPredicate predicateWithFormat:@"salary > $salaryB AND months.@sum.money < $salaryE AND name LIKE [cd] $name"];
        NSPredicate *pred9 = [predTheme predicateWithSubstitutionVariables:@{@"salaryB":@18000, @"salaryE":@40000, @"name":@"x*"}];
        NSLog(@"result9 >>>> %@",[arr filteredArrayUsingPredicate:pred9]);
        
        // 7 正则表达式
       
        NSString *expression = @"[A-Za-f0-9~_%]+@[A-Za-z0-9]+\\.[a-z]{2,4}";
       // NSString *e = @"^a[A-Za-f0-9~_%]+b$";
        NSPredicate *pred10 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", expression];
        
        if ([pred10 evaluateWithObject:@"waefawf123@.xcom"]) {
            NSLog(@"是邮箱");
        }
        
        NSString *tests = @"weafwafwaf,fewaefwa@163.com,fawefwaf,waeofjo@awe.com,waefwafawf,fweafwaf,24142@111.com";
        NSRange range = [tests rangeOfString:expression options:NSRegularExpressionSearch];
        
        NSLog(@"range >>> %@", NSStringFromRange(range));
        
        
        
        
        
        
    }
    return 0;
}
