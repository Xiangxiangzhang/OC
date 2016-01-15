//
//  Person.m
//  KVC
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Person.h"

@interface Person ()
{
    float height;
}
@property (nonatomic)int salary;
@end
@implementation Person
//- (NSMutableArray *)friends
//{
//    if (_friends == nil) {
//    Person *f1 = [[Person alloc] init];
//    Person *f2 = [[Person alloc] init];
//    Person *f3 = [[Person alloc] init];
//    Person *f4 = [[Person alloc] init];
//    Person *f5 = [[Person alloc] init];
//    _friends = [NSMutableArray arrayWithArray:@[f1,f2,f3,f4,f5]];
//}
//    return _friends;
//}

// 下面3个方法都是可选实现，根据自己类的使用情况来完成
- (void)setNilValueForKey:(NSString *)key
{
    [self setValue:@0 forKey:key];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([key isEqualTo:@"nickname"]) {
        [self setValue:value forKey:@"name"];
    }
}

- (id)valueForUndefinedKey:(NSString *)key
{
    return @"用点心吧";
}

@end
