//
//  Student.h
//  属性
//
//  Created by qingyun on 15/10/30.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Person.h"
@class School;

@interface Student : Person

@property int age;
@property School *school;

- (instancetype)initWithAge:(int)age;

@end
