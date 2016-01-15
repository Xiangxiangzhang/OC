//
//  Woman.h
//  Person
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Woman : NSObject
{
    NSString *_name;
    int _age;
}

- (NSString *)name;

- (int)age;

- (instancetype)init;

@end
