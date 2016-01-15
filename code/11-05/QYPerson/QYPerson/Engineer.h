//
//  Engineer.h
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Engineer : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic)int salary;
@property (nonatomic,strong)NSDate *date;
@property (nonatomic)int EX;
@property (nonatomic)NSArray *salarys;

+ (instancetype)engineerWithDict:(NSDictionary *)dict;

@end
