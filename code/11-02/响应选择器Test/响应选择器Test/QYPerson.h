//
//  QYPerson.h
//  响应选择器Test
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYPerson : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *identify;
@property (nonatomic)int age;

- (instancetype)initWithName:(NSString *)name andIdentify:(NSString *)identify andAge:(int)age;

- (void)sing;

@end
