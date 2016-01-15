//
//  Person.h
//  ClassExtension
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,strong)NSString *name;

@property (nonatomic,strong,readonly)NSString *identify;

- (void)move;

@end
