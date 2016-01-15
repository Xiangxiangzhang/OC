//
//  main.m
//  Person
//
//  Created by qingyun on 15/10/22.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
// 类的语法
// 第一部分:称之为 接口
@interface Person:NSObject //类名:父类的名字

// 类的成员变量的声明（类似于结构体中的成员）
{
    NSString *_name;
    int _age;
}

// setter getter方法
-(void)setName:(NSString *)name;// setter 的命名习惯 set+成员变量名字
-(NSString *)name;// getter 一般都是直接以成员变量命名

- (void)setAge:(int)age;
- (int)age;

- (void)love;

// 类的方法的声明
// 以 + 开始的方法是类方法， 只能由 类来执行
// 下面是一个类方法，这个方法接收两个参数 name 和 age，然后用来实例化一个对象，这个对象的成员变量直接使用两个参数的值，最终将该对象返回，像这样的类方法称之为工厂方法
// ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️:注意区分类方法（以+开始的方法）和类的方法（类中声明的方法统称为类的方法）这两个叫法
+ (Person *)personWithName:(NSString *)name andAge:(int)age;

@end

// 第二部分:实现
@implementation Person

+ (Person *)personWithName:(NSString *)name andAge:(int)age
{
    Person *some = [Person new];
    [some setAge:age];
    [some setName:name];
    return some;
}

// 成员变量可以直接在类的实现内部直接使用
-(void)setName:(NSString *)name
{
    _name=name;
}
-(NSString *)name
{
    return _name;
}

- (void)setAge:(int)age
{
    _age = age;
}

- (int)age
{
    return _age;
}

- (void)love
{
    NSLog(@"loving.....");
    NSLog(@"love ....");
}

@end

int main(int argc, const char * argv[]) {
    
    // 类就是一种新的数据类型，类定义的变量就称为 对象
    Person *person =[Person new];// 向类发消息new 就可以新建一个对象，      标准说法：实例化对象（创建对象）
    [person love];
    
    // 使用自定义的类方法来创建一个对象
    Person *stu1=[Person personWithName:@"feifei" andAge:18];
    NSLog(@"stu1'name  >>> %@, age >>> %d",[stu1 name],[stu1 age]);
    
    return 0;
}
