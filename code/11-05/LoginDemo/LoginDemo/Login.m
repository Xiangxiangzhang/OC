//
//  Login.m
//  LoginDemo
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Login.h"
#import "Register.h"

@implementation Login

- (void)toRegister
{
    Register *reg = [[Register alloc] init];
    
    void (^backCall)(NSString *,NSString *) = ^(NSString *u,NSString *p){
        _username = u;
        _password = p;
    };
    
    reg.block = backCall;
    NSLog(@"开始填写信息：");
    [reg write];
    [reg toLogin];
    
}

@end
