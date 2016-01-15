//
//  Person.h
//  KVC
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *sex;
@property (nonatomic)int age;
@property (nonatomic,strong) Person *friend;
@property (nonatomic,strong,readonly) NSString *ID;
@property (nonatomic,strong) NSMutableArray *friends;

@end
