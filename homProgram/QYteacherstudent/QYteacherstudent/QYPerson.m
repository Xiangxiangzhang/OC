//
//  QYPerson.m
//  
//
//  Created by qingyun on 15/10/23.
//
//

#import "QYPerson.h"

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

- (void)setNative:(NSString *)native
{
    _native=native;
}
- (NSString *)native
{
    return _native;
}

- (void)introdece
{
    NSLog(@"我叫%@,今年%d岁,来自%@",_name,_age,_native);
}

@end

