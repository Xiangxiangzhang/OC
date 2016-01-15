//
//  NSString+NumberConvence.h
//  StringLengthAsNSNumber
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

//@interface 类名 （类别名字）
@interface NSString (NumberConvence)


//类别主要是为类扩展新的行为
//主要适用于：1.不知道源代码的情况  2.类簇  3.第三方的库
- (NSString *)lengthAsNumber;

- (void)eat;

@end
