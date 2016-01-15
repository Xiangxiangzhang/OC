//
//  Person.m
//  
//
//  Created by qingyun on 15/10/30.
//
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    if (self = [super init]) {
        _ID = @"this is a secret";
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name
{
    if (self = [self init]) {
        _name=name;
    }
    return self;
}

// 如果自己完全实现了 setter、getter 方法，那么就需要明确的使用 @synthesize name 来合成
// 如果对系统生成 setter、getter 方法不满意 可能需要自己来实现
//- (void)setName:(NSString *)name
//{
//    NSLog(@"nickName >>> %@", name);
//    _name = name;
//}
- (NSString *)name
{
    NSLog(@"nickname........");
    return _name;
}

// 如果使用了 strong 来修饰，生成的 setter方法如下
//- (void)setFrend:(Friend *)frend
//{
//    if (_frend != frend) {
//        [_frend release];
//        _frend = [frend retain];
//    }
//}

// 如果使用了 weak 来修饰，生成的 setter方法如下
//- (void)setFrend:(Friend *)frend
//{
//     _frend = frend;
//}

// 如果使用了 copy 来修饰，生成的 setter方法如下
//- (void)setFrend:(Friend *)frend
//{
//     _frend = [frend copy];
//}


// @dynamic 阻止生成属性对象 setter、getter的实现以及成员变量，但是有setter、getter方法的声明
// @dynamic 的真正用法是隐藏属性的具体实现
@dynamic salary;
- (void)setSalary:(double)salary
{
    cash = salary;
}
- (double)salary
{
    return cash;
}

- (instancetype)initWithName:(NSString *)name andID:(NSString *)ID
{
    if (self = [[self init]initWithName:name]) {
               _ID=ID;
    }
    return self;
}

@end
