//
//  QYTeacher.h
//  作业
//
//  Created by qingyun on 15/10/24.
//  Copyright (c) 2015年 阿六. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYTeacher : NSObject

{
    NSString *_name;
    NSString *_sex;
    NSString *_hobby;
    int _age;
    
}

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setSex:(NSString *)sex;
- (NSString *)sex;

- (void)setHobby:(NSString *)hobby;
- (NSString *)hobby;

- (void)setAge:(int)age;
- (int)age;


@end
