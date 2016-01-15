//
//  main.m
//  LoginDemo
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Register.h"
#import "Login.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Login *log = [[Login alloc] init];
        NSLog(@"登陆界面正在加载");
        [log toRegister];
        
        NSLog(@"username:%@ , password:%@",log.username,log.password);
    
    }
    return 0;
}
