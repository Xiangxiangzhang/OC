//
//  Person.m
//  ClassExtension
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Person.h"

//扩展类（私有的类，只能在.m中使用）
@interface Girl : NSObject

@property (nonatomic,strong)NSString *name;

@end

@implementation Girl

@end

//类的扩展,可以理解为写在类的实现内部的类别，没有名字，只有在类的实现内部才可以使用扩展出来的内容
@interface Person ()
//可以扩展成员变量
{
    int _age;
}

//可以扩展属性
@property (nonatomic) BOOL man;
@property (nonatomic,strong)Girl *friend;

//把只读的属性变成可读可写的
@property (nonatomic,strong,readwrite)NSString *identify;

@end

//扩展类别（私有类别，只能在.m中使用）
@interface NSString (NumberConvenience)

- (NSNumber *)lengthAsNumber;

@end

@implementation NSString (NumberConvenience)
- (NSNumber *)lengthAsNumber
{
    NSUInteger len = [self length];
    return @(len);
}

@end

@implementation Person

- (instancetype)init
{
    if (self = [super init]) {
        
        self.friend.name = @"香香";
        
        self.man=YES;
        _age=20;
        [self setIdentify:@"411423xxxx"];
    }
    return self;
}

//懒加载
- (Girl *)friend
{
    if (_friend == nil) {
        _friend = [[Girl alloc]init];
    }
    return _friend;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"名字:%@,性别:%@,年龄:%d,身份证:%@",_name,_man?@"男":@"女",_age,_identify];
}

- (void)move
{
    NSLog(@"饭后走走...身体棒棒哒");
}

//扩展方法
- (void)love
{
    NSLog(@"我只喜欢鹿晗");
}

@end
