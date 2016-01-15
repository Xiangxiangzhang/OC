//
//  QYManger.m
//  非正式协议
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYManger.h"
#import "QYSecretary.h"

@implementation QYManger

- (void)work
{
    NSLog(@"我是经理，我很忙的");
    
//[self.delegate work];//通过委托调用了QYSecretary中的方法
}

@end
