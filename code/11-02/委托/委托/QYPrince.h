//
//  QYPrince.h
//  委托
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sleep.h"

//QYPrince 遵守Sleep协议，那么就要实现Sleep协议里面声明的方法（wakeUp）
@interface QYPrince : NSObject <Sleep>

- (void)tellMeTime:(NSTimeInterval)time;

@end
