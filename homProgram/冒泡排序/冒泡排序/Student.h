//
//  Student.h
//  冒泡排序
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic) int age;

- (instancetype)initWithNmae:(NSString *)name andAge:(int)age;

@end
