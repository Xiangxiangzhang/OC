//
//  QYCar.h
//  QYCar
//
//  Created by qingyun on 15/10/24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYTire.h"
#import "QYEngine.h"

@interface QYCar : NSObject
{
    NSString *_name;
    QYEngine *_engine;// 用其他类的对象当做另外一个类的成员变量时，我们称之为 复合
    QYTire *_tire;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setEngine:(QYEngine *)engine;
- (QYEngine *)engine;

- (void)setTire:(QYTire *)tire;
- (QYTire *)tire;
@end
