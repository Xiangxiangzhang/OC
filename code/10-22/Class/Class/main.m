//
//  main.m
//  Class
//
//  Created by qingyun on 15/10/24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
// 类的语法
// 第一部分:称之为 接口
@interface Person : NSObject
{
    int _age;
    NSString *_name;
    
}

+ (Person *)personWithName:(NSString *)name andAge:(int)age;

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setAge:(int)age;
- (int)age;

@end

@implementation Person

+ (Person *)personWithName:(NSString *)name andAge:(int)age
{
    Person *some = [Person new];
    [some setAge:age];
    [some setName:name];
    return some;
}

- (void)setAge:(int)age
{
    _age = age;
}

- (int)age
{
    return _age;
}

- (void)setName:(NSString *)name
{
    _name=name;
}
- (NSString *)name
{
    return _name;
}

@end

int main(int argc, const char * argv[]) {
    
    Person *per=[Person personWithName:@"lele" andAge:18];
    NSLog(@" per'name >>>%@, per'age >>> %d ",[per name],[per age]);
   
    return 0;
}
