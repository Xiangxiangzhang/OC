//
//  QYPerson.h
//  私有API
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYPerson : NSObject

@property (nonatomic,strong) NSString *name;

@property (nonatomic,strong) NSString *identify;

@property (nonatomic)int age;

- (void)tellYourHome;



@end
