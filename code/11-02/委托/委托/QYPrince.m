
//
//  QYPrince.m
//  委托
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYPrince.h"

@implementation QYPrince

- (void)tellMeTime:(NSTimeInterval )time
{
    if ([self respondsToSelector:@selector(wakeUp)])
    {
    
        //启动一个定时器，
        /*参数1：时间，以秒为单位
         参数2：时间到之后，接收消息的目标或者是对象
         参数3：时间到之后，需要发的消息，@selector(方法名)
         参数4：用户信息，用于销毁定时器
         参数5：重复的次数，只用一次的话，就是NO
         */
        //响应选择器：可以把方法作为参数，SEL 方法参数的类型
        //scheduledTimerWithTimeInterval:计时器的间隔 target:具体的对象 selector:时间间隔之后需要做的事情（方法） userInfo:传递其他的信息 repeats:是否重复
    [NSTimer scheduledTimerWithTimeInterval:time target:self selector:@selector(wakeUp) userInfo:nil repeats:NO];
    }
}

- (void)wakeUp
{
    NSLog(@"起床了,开始学习了");
}
@end
