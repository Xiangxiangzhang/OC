//
//  Register.m
//  LoginDemo
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Register.h"
#import "Login.h"

@implementation Register

- (void)write
{
    _name = @"zhangxiangyu";
    _pwd = @"666666";
}

- (void)toLogin
{
    NSLog(@"注册成功，返回登录界面");
    _block(_name,_pwd);
   
}
@end
