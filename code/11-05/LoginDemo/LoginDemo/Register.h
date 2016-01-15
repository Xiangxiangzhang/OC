//
//  Register.h
//  LoginDemo
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Login;
@interface Register : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *pwd;

@property (nonatomic,strong) void (^block)(NSString *,NSString *);

- (void)toLogin;
- (void)write;

@end
