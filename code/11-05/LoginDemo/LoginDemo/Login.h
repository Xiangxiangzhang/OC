//
//  Login.h
//  LoginDemo
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Login : NSObject

@property (nonatomic,strong) NSString *username;
@property (nonatomic,strong) NSString *password;

- (void)toRegister;

@end
