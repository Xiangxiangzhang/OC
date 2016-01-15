//
//  main.m
//  NSDictionary
//
//  Created by qingyun on 15/10/26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    //1.创建字典对象
    //方法1
    NSDictionary *dict=[NSDictionary dictionaryWithObjectsAndKeys:@"xiangxiang",@"name",@"18",@"age",@"girl",@"sex", nil];
    //字典也是只能存对象，也不能存nil
    //方法2(一般采用方法2)
    NSDictionary *dict1=@{@"name":@"luhan",@"age":@"19",@"sex":@"boy"};
    
    
    //2.访问字典
    NSLog(@"dict >> %@",dict);
    NSLog(@"dict1 >> %@",dict1);
    NSLog(@"name >>> %@",dict1[@"name"]);
    NSLog(@"age >>> %@",[dict1 objectForKey:@"age"]);//键访问
    
    //3.遍历
    //方法1：
    for(NSString *key in dict1){
        NSLog(@"%@ : %@",key,dict1[key]);
    }
    
    //方法2：
    NSEnumerator *enumrator = [dict1 keyEnumerator];
    NSString *name;
    while ((name = [enumrator nextObject]) !=nil) {
        NSLog(@"%@ : %@",name,dict1[name]);
    }
    
    //4.allkeys(所有的键) && allvalues(所有的值)
    NSArray *keys = [dict allKeys];
    NSLog(@"keys >> %@",keys);
    
    NSArray *values=[dict  allValues];
    NSLog(@"values >> %@",values);
    
    /******* NSMutableDictionary *******/
    NSMutableDictionary *mtDict=[NSMutableDictionary dictionaryWithDictionary:dict];
    //把上面建立的字典dict的内容传进来放入mtDict字典里面
    Person *person = [Person new];
    [person setName:@"zhangxiangyu"];
    
    //更改键值内容
    //如果更改键值时，键不存在就相当于添加一对新的
    mtDict[@"someone"]= person;
    NSLog(@" mtDict >> %@",mtDict);
    mtDict[@"somebody"]=person;
    NSLog(@" mtDict >> %@",mtDict);
    [mtDict setValue:@"doudou" forKey:@"name"];
    NSLog(@" mtDict >> %@",mtDict);
    
    //直接添加一个字典
    [mtDict addEntriesFromDictionary:@{@"xxx":@"uuu",@"yyy":@"zzz"}];
    NSLog(@" mtDict >>> %@",mtDict);
    
    //删除
    [mtDict removeObjectForKey:@"xxx"];//删一个
    NSLog(@" mtDict >>> %@",mtDict);
    [mtDict removeObjectsForKeys:@[@"yyy",@"somebody"]];//删多个
    NSLog(@" mtDict >>> %@",mtDict);
    [mtDict removeAllObjects];
    NSLog(@" mtDict >>. %@",mtDict);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
