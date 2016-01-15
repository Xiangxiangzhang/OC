//
//  main.m
//  NSString
//
//  Created by qingyun on 15/10/27.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //1.创建字符串对象
    NSString  *str = @"xiangxiang";
    NSLog(@" str >> %@",str);
    //格式化方式创建
    NSString *str1 = [NSString stringWithFormat:@"我是：%@,年龄:%d",@"xiangxiang",18];
    NSLog(@" str1 >> %@",str1);
    //从文件中读取
    NSString *str2 = [NSString stringWithContentsOfFile:@"/Users/qingyun/Desktop/歌词.txt" encoding:NSUTF8StringEncoding error:nil];
    NSLog(@" str2 >> %@",str2);
    //把C的字符变成OC字符串对象
    NSString *str3 = [NSString stringWithCString:"zhangxiangyu" encoding:NSUTF8StringEncoding];
    NSLog(@"str3 >> %@",str3);
    
    //2.字符串的长度
    NSLog(@"str3'len >> %ld",[str3 length]);
    
    //3.字符串比较
    NSString *str4 = @"123456789";
    NSLog(@" str4 >> %p",str4);
    NSString *str5 = @"345";
    NSLog(@" result1 >> %ld",[str4 compare:str5 options:NSNumericSearch | NSCaseInsensitiveSearch ]);
    NSLog(@" result2 >> %ld",[str4 compare:str5 options:NSCaseInsensitiveSearch range:NSMakeRange(3,4)]);
    NSLog(@" result3 >> %ld",[str4 compare:str5]);
    NSString *str6 = @"ABC";
    NSString *str7 = @"abc";
    NSLog(@" result4 >> %ld",[str6 compare:str7 options:NSCaseInsensitiveSearch]);
    //判断字符串内容是否相同
    if ([str6 isEqualToString:str7]) {
        NSLog(@"相同");
    }else{
        NSLog(@"不相同");
    }
    
    NSString *str8 = @"hello,xiangxiang";
    NSString *str9 = @"hello,xiangxiang";
    if (str8 == str9) {
        NSLog(@"str8 >>%p,str9 >>%p",str8,str9);
    }
    
    //格式化创建 alloc分配内存
    NSString *str10 = [[NSString alloc]initWithFormat:@"hello,%@",@"xiangxiang"];
    NSLog(@" str10 >> %@",str10);
    
    //字符串包含
    if ([@"411423xxxxxxxx" hasPrefix:@"41"]) {
        NSLog(@"河南人");
    }if([@"heihei.png" hasSuffix:@"png"]){
        NSLog(@"是图片");
    }if ([@"asdfgxxxxvbfh" containsString:@"xxxx"]) {
        NSLog(@"包含xxxx");
    }
    //判断相等的范围
    NSLog(@"rang >>> %@",NSStringFromRange([@"ascfv1234df" rangeOfString:@"1234"]));
    
    //5.字符串链接(链接生成新的字符串，原来字符串的内容没有变)
    NSString *str11 = @"我是:";
    NSString *str12 = @"张香玉";
    NSLog(@" str >> %@",[str11 stringByAppendingString:str12]);
    NSLog(@" str11 >> %@",str11);
    NSLog(@" str12 %@",str12);
    //链接路径
    NSLog(@" str >> %@",[@"/Users/qingyun/Desktop" stringByAppendingPathComponent:@"歌词.txt"]);
    
    //6.提取子字符串(从下标为6开始取8个)
    NSLog(@"birth >>> %@",[@"411423200010123456" substringWithRange:NSMakeRange(6, 8)]);
    
    //可变字符串的用法(地址没变)
    //NSMutableString 是NSString 的子类，所以NSString 中所有的用法对NSMutableString都是适用的
    NSMutableString *str13 = [NSMutableString stringWithString:@"我是大美女"];
    NSLog(@" str13 >> %@",str13);
    
    //1.追加
    NSLog(@"str13 >>%@,%p",str13,str13);
    [str13 appendString:@"我叫张香玉"];
    NSLog(@"str13 >>>%@,%p",str13,str13);
    
    //2.删除
    [str13 deleteCharactersInRange:NSMakeRange(0,5)];
    NSLog(@"str13 >> %@",str13);
    
    //3.插入
    [str13 insertString:@"我的偶像是鹿晗" atIndex:5];
    NSLog(@"str13 >> %@",str13);
    
    //4.替换
    [str13 replaceCharactersInRange:NSMakeRange(0, 5) withString:@"我是大美女"];
    NSLog(@" str13 >> %@",str13);
    NSLog(@" str13'len >>> %ld,%p",[str13 length],str13);
    
    //5.setString(重新设定字符串后，还是原地址)
    [str13 setString:@"我叫张香玉"];
    NSLog(@" str13 >> %@,%p",str13,str13);
    
    
    
    
    
    
    
    
    
    
    
    
   
    
    return 0;
}
