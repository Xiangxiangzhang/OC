//
//  Salary.h
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Salary : NSObject

@property (nonatomic) int month;
@property (nonatomic) int money;

- (instancetype)initWithMonth:(int)month andMoney:(int)money;


@end
