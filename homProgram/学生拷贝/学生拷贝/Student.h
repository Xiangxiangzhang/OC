//
//  Student.h
//  学生拷贝
//
//  Created by qingyun on 15/11/7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject <NSCopying>

@property (nonatomic,strong) NSString *name;
@property (nonatomic) int age;
@property (nonatomic,strong)NSArray *books;

- (instancetype)initWithName:(NSString *)name andAge:(int)age andBooks:(NSArray *)books;

@end
