//
//  main.m
//  NSArray
//
//  Created by qingyun on 15/10/26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYCar.h"
int main(int argc, const char * argv[]) {
    //****** 一: 不可变数组 *****//
    //1.创建数组对象
    //方法1
    NSArray *arr = [NSArray arrayWithObjects:@"aa",@"bb",@"cc",nil];
    NSLog(@" arr >> %@",arr);
    //方法2(2.0语法)
    NSArray *arr1 = @[@"ee",@"ff",@"gg"];
    NSLog(@" arr1 >> %@",arr1);
    
    QYCar *c1=[QYCar new];
    [c1 setName:@"大众"];
    //OC中的数组只能存对象
    NSArray *arr2=@[@"fufu",[NSObject new],@"1234",c1];
    NSLog(@"arr2 >>> \n%@",arr2);//@"fufu",[NSObject new],@"1234",c1是四个对象
    
    //2.访问数组的元素
    for (int i=0; i<[arr1 count]; i++) {//count 获取数组长度
          NSLog(@"arr1[%d] = %@",i,arr1[i]);// 输出方法1
         // NSLog(@"arr[%d] = %@",i,[arr1 objectAtIndex:i]);//输出方法2
    }
    
    //3.是否包含某个对象
    if ([arr2 containsObject:@"1234"]) {
        NSLog(@"包含1234");
    }
    
    //4.遍历数组
    //快速枚举
    //格式:for （能代表所有元素的类型 变量 in 数组）
    for (id obj in arr2 ) {
        NSLog(@"obj >>> %@",obj);
    }
    
    //枚举器
    //NSEnumerator *enumrator = [arr2 objectEnumerator];//顺序枚举
    NSEnumerator *enumrator = [arr1 reverseObjectEnumerator];//reverseObjectEnumerator逆序枚举
    id nextObj = [enumrator nextObject];
    while (nextObj != nil) {
        NSLog(@"next >>>>> %@",nextObj);
        nextObj = [enumrator nextObject];
    }
    
    //5.链接
    NSArray *arr3= @[@"zhang",@"cheng",@"yang",@"zhu"];
    NSArray *arr4=@[@"xiang",@"yu",@"you",@"xian"];
    NSArray *add=[arr3 arrayByAddingObjectsFromArray:arr4];
    NSLog(@" add >>> %@",add);
    
    
    
    
    
    
    
    
    
    
    
    
    //6.字符串分隔
    NSString *name=@"luhan,xiangxiang";
    NSLog(@"name >>%@",name);
    NSArray *nameArr=[name componentsSeparatedByString:@","];
    NSLog(@"nameArr >> %@",nameArr);//把字符串转换成数组的形式输出
    
    NSString *names1=[nameArr componentsJoinedByString:@"-"];
    NSLog(@"names1 >> %@",names1);//把数组转换成字符串的形式输出，以-间隔
    
    //***** 二:可变数组 *****//(对象Object:(id)-->@"",Index :2(数组下标))
    // NSMutableArray 是NSArray的子类，其中的元素可以更换或其他的变动操作
    // arrayWithCapacity使用容量分配的方式来获得可变数组对象
    NSMutableArray *mtarr = [NSMutableArray arrayWithCapacity:10];
    mtarr[0]=@"juanjuan";
   // NSLog(@"matarr >>> %@",mtarr);//NSMutableArray里的串是可变的，当重新赋值后原来mtarr[0]里的juanjuan将改变为lili
    mtarr[0]=@"lili";
    NSLog(@"mtarr >>> %@",mtarr);
    
    //追加
    [mtarr addObject:@"huahua"];//追加单个串
    NSLog(@"mtarr >> %@",mtarr);
    [mtarr addObjectsFromArray:nameArr];//追加一个数组
     NSLog(@"mtarr >> %@",mtarr);
    
    //删除
    [mtarr removeObject:@"xiangxiang"];//删除掉数组的所有该对象
    NSLog(@"mtarr  >> %@",mtarr);
    [mtarr removeObjectAtIndex:2];
    NSLog(@"mtarr >> %@",mtarr);
    
    //插入
    [mtarr insertObject:@"luhan" atIndex:1];
    NSLog(@"mtarr >> %@",mtarr);
    
    //替换
    [mtarr replaceObjectAtIndex:0 withObject:@"xiangxiang"];
    NSLog(@"mtarr >> %@",mtarr);
    
    NSArray *mtarr1=@[@"lele",@"pipi",@"maomao"];
    NSLog(@"mtarr1 >> %@",mtarr1);
    [mtarr replaceObjectsInRange:NSMakeRange(1, 2) withObjectsFromArray:mtarr1];
    NSLog(@"mtarr >> %@",mtarr);//在数组mtarr下标为1的位置开始数替换2个元素用来存放mtarr1中的所有元素

    
    return 0;
}
