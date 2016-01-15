//
//  Person.h
//  
//
//  Created by qingyun on 15/10/30.
//
//

#import <Foundation/Foundation.h>
@class Friend;

@interface Person : NSObject
{
    double cash;
}

//@property 类型名 属性名字 ：将来会生成对应的成员变量（变量名字是 _属性名字），setter,getter方法声明以及实现

//安全,性能属性扩展:nonatomic/atomic  nonatomic(非原子性)用来提升性能，atomic(原子性)线程安全，但是性能较低，所以推荐全部使用 nonatomic
@property (nonatomic,strong) NSString *name;

//读写属性扩展:readonly/readwrite 默认值是 readwrite
//readonly 代表属性是只读，编译器不会生成该属性对应的 setter 方法的声明和实现
@property (nonatomic,readonly,strong) NSString *ID;

//内存语义: strong=retain/weak/assign/copy
//strong 代表将来生成的成员变量是强引用， weak生成弱引用，这两个都是对对象使用
// assign 代表标量 的 内存语义，默认是assign，所以标量的内存语义不需要写，对象不能使用assign
@property (nonatomic) double salary;

@property (nonatomic,strong)Friend *frend;

// getter=isHide 可以为getter方法改名
@property (nonatomic, getter=isHide) BOOL hide;

- (instancetype)initWithName:(NSString *)name;

- (instancetype)initWithName:(NSString *)name andID:(NSString *)ID;

@end
