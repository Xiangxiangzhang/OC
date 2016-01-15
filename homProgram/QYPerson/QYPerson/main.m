//
//  main.m
//  QYPerson
//
//  Created by qingyun on 15/10/23.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYPerson : NSObject
{
    NSString *_name;
    int _age;
    NSString *_sex;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setAge:(int)age;
- (int)age;

- (void)setSex:(NSString *)sex;
- (NSString *)sex;

- (void)introduce;
- (void)eat:(NSString *)thing;
- (void)sleep;
- (void)play;

@end

@implementation QYPerson

- (void)setName:(NSString *)name
{
    _name=name;
}
- (NSString *)name
{
    return _name;
}

- (void)setAge:(int)age
{
    _age=age;
}
- (int)age
{
    return _age;
}

- (void)setSex:(NSString *)sex
{
    _sex=sex;
}
- (NSString *)sex
{
    return _sex;
}

-(void)introduce
{
    NSLog(@"我的名字叫%@,性别:%@,今年%d岁",_name,_sex,_age);
}

- (void)eat:(NSString *)thing
{
    NSLog(@"%@在吃%@",_name,thing);
}

- (void)sleep
{
    NSLog(@"%@在睡觉",_name);
}
- (void)play
{
    NSLog(@"%@在打豆豆",_name);
}

@end
int main(int argc, const char * argv[]) {
    
    QYPerson *person=[QYPerson new];
    [person setName:@"乐乐"];
    [person setAge:18];
    [person setSex:@"男"];
    [person introduce];
    [person eat:@"香蕉"];
    [person sleep];
    [person play];
    
    return 0;
}
