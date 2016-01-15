//
//  Sleep.h
//  协议
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

//创建了一个正式协议，协议名为Sleep继承自NSObject协议，(这个<NSObject>不是类名，而是协议名，最顶层的协议
@protocol Sleep <NSObject>

- (void)wakeUp;

@end
