//
//  Person.h
//  ReferenceCount
//
//  Created by qingyun on 15/10/28.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
}

- (void)jump;

- (void)setName:(NSString *)name;

@end
