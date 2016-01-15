//
//  main.m
//  ClassExtension
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *per = [[Person alloc]init];
        per.name = @"鹿晗";
        //per.identify = @"411423xxxx";//identify是只读属性，所以没有setter方法
        NSLog(@" 鹿晗 >>>> %@",per);
       
       
        
    }
    return 0;
}
