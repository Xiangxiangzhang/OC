//
//  main.m
//  KVC
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSDictionary *info = @{
//                                @"name":@"鹿晗",
//                                @"sex":@"男",
//                                @"age":@18
//                  
//                           };
//        [info writeToFile:@"/Users/qingyun/Desktop/info.plist" atomically:YES];
        
        NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:@"/Users/qingyun/Desktop/info.plist"];
        NSLog(@"name>>> %@,%@,%@",dict[@"name"],[dict objectForKey:@"name"],[dict valueForKey:@"name"]);
        
        Person *per = [[Person alloc ] init];
        
        for (NSString *key in dict) {
//            if ([key isEqualToString:@"name"]) {
//                per.name = dict[key];
//            }
//            if ([key isEqualToString:@"sex"]) {
//                per.sex = dict[key];
//            }
//            if ([key isEqualToString:@"age"]) {
//                per.age = [dict[key] intValue];
//            }
            
            // KVC是通过字符串的方式来访问对象的状态，通过键名去访问对应的setter、getter方法，如果没找到就直接访问同名的成员变量
            // KVC可以自动装箱 拆箱数据
            [per setValue:dict[key] forKey:key];
        }
        
        // 1.KVC 是对成员变量的一种间接访问，所以性能和效率需要考量，不能滥用KVC
        NSLog(@"name:%@,sex:%@,age:%@",per.name,per.sex ,[per valueForKey:@"age"] );
        
        // 2. 如果KVC的键找到的成员变量是一个对象，还能继续通过键路径的方式继续往下访问别的成员变量
        NSLog(@" name'length >>> %@",[per valueForKeyPath:@"name.length"]);
        
        Person *person = [[Person alloc] init];
        person.name = @"xiangxiang";
        
        //person.ID = @"411423xxxxx";//ID是只读的不能setter
        // 3.KVC还能访问只读的属性和私有的属性和成员变量，不过最终访问的还是成员变量
        [person setValue:@"411423xxxx" forKey:@"ID"];
        NSLog(@"person'ID>> %@",person.ID);
        
        [person setValue:@"123" forKey:@"salary"];
        NSLog(@" salary >> %@",[person valueForKey:@"salary"]);
        
        [person setValue:@"1.70" forKey:@"height"];
        NSLog(@" height >> %@",[person valueForKey:@"height"]);
        
        per.friend = person;
        [per setValue:@"张香玉" forKeyPath:@"friend.name"];
        NSLog(@" friend'name:%@",[per valueForKeyPath:@"friend.name"]);
        
        // 4.键路径是不限制长度的
        NSLog(@" person'name'length :%@",[per valueForKeyPath:@"friend.name.length"]);
        NSLog(@" person'name :%@",person.name);
        
        //5.批处理
        NSDictionary *info = [per dictionaryWithValuesForKeys:@[@"name",@"age",@"friend"]];
        NSLog(@" info >> %@",info);
        
        // 6.灌入所有的属性
        [person setValuesForKeysWithDictionary:dict];
        NSLog(@"name:%@,sex:%@,age:%d,height:%@",per.name,per.sex ,per.age,[per valueForKey:@"height"]);
        
        //7.整体操作
        
        Person *f1 = [[Person alloc] init];
        Person *f2 = [[Person alloc] init];
        Person *f3 = [[Person alloc] init];
        Person *f4 = [[Person alloc] init];
        
        person.friends = [NSMutableArray arrayWithArray:@[f1,f2,f3,f4]];
        NSLog(@"%@",person.friends);
        
        [person setValue:@"huahua" forKeyPath:@"friends.name"];
        NSLog(@"names >> %@",[person valueForKeyPath:@"friends.name"]);
        
        // 8.设置nil
        // setvalue参数是0的时候需要注意，这时候0意味着传入了一个nil，如果该键对应的属性值是标量的话，kvc会在自动拆箱的时候报错，这时候会调到setNilValueForKey这个对象法，重写这个方法可以捕获该异常，并且做合理的逻辑处理
        [person setValue:0 forKey:@"age"];
        NSLog(@" age : %d",person.age);
        NSLog(@" salayr >> %@",[person valueForKey:@"salary"]);
        
        // 9.处理未定义的键
        [person setValue:@"鹿晗帅哥" forKey:@"nickname"];
        NSLog(@" nickname >> %@",[person valueForKey:@"nickname"]);
                
    }
    return 0;
}
