//
//  NSObject+Secretary.h
//  非正式协议
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Secretary)

//为NSObject添加类别，里面新添加的方法可以被任何对象调用，属于非正式协议
- (void)phoneCall:(NSString *)something;
- (void)bookTicket;

@end
