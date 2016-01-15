//
//  main.m
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engineer.h"
#import "Salary.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Engineer *eg1 = [Engineer engineerWithDict:@{@"name":@"wanglei",
                                                     @"EX":@7,
                                                     @"salary":@100000,
                                                     @"date":[NSDate dateWithTimeIntervalSinceNow:7*86400]}]; //设置日期为：一周后
        
        Engineer *eg2 = [Engineer engineerWithDict:@{@"name":@"wanglei",
                                                     @"EX":@7,
                                                     @"salary":@80000,
                                                     @"date":[NSDate dateWithTimeIntervalSinceNow:7*46400]}];
        
        Engineer *eg3 = [Engineer engineerWithDict:@{@"name":@"zhangxi",
                                                     @"EX":@10,
                                                     @"salary":@110000,
                                                     @"date":[NSDate dateWithTimeIntervalSinceNow:7*26400]}];
        
        NSArray *egs = @[eg1, eg2, eg3];
        
        // KVC 快速运算
        NSLog(@"工资总和:%@", [egs valueForKeyPath:@"@sum.salary"]);
        NSLog(@"最早发工资:%@", [egs valueForKeyPath:@"@min.date"]); // 求对象
        NSLog(@"最多的工资:%@", [egs valueForKeyPath:@"@max.salary"]);
        NSLog(@"个数:%@", [egs valueForKeyPath:@"@count.name"]);
        NSLog(@"平均数:%@", [egs valueForKeyPath:@"@avg.salary"]);
        NSLog(@"不重复的结果:%@", [egs valueForKeyPath:@"@distinctUnionOfObjects.EX"]);
        
        NSLog(@"3个月的工资总和:%@", [egs valueForKeyPath:@"@sum.salarys.@sum.money"]);
        NSLog(@"3个月的平均工资:%@", [egs valueForKeyPath:@"@avg.salarys.@avg.money"]);
       
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
