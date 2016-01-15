//
//  main.m
//  NSNumber
//
//  Created by qingyun on 15/10/26.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //把基本数据类型（标量）变成对象就称为：装箱（boxing）
    NSNumber *intObj = [NSNumber numberWithInt:100];
    NSNumber *charObj = [NSNumber numberWithChar:'c'];
    NSNumber *boolObj = [NSNumber numberWithBool:YES];
    NSLog(@" intObj >>> %@",intObj);
    NSLog(@" charObj >>> %@",charObj);
    NSLog(@" boolObj >>> %@",boolObj);
    
    //NSArray *arr = @[intObj,charObj,boolObj];
    NSArray *arr = @[@100,@'c',@YES];//快速装箱
    NSLog(@" arr >> %@",arr);
    
    //拆箱
    int intVar = [intObj intValue];//1.采用本类NSNumber中的方法(用intValue方法拆intObj对象，然后放在intVar中)拆箱
    char charvar= [charObj charValue];//NSNumber中的方法
    int c;
    [intObj getValue:&c]; //2.采用父类NSValue中的方法拆箱
    NSLog(@" c >> %d",c);
    NSLog(@" charvar >>> %c",charvar);
    NSLog(@"intVar >> %d",intVar);
    
    //把其他数值对象变成该数值的字符串内容，可以使用stringValue
    NSString *intStr = [@100 stringValue];//@"100"
    NSLog(@"intStr >> %@",intStr);
    
    
    //NSValue（结构体的装箱）
    //两种类型的结构体装箱
    typedef struct {
        int age;
        float height;
    }STU;
    STU st1;
    NSValue *structValue = [NSValue valueWithBytes:&st1 objCType:@encode(STU)];
    struct student{
        int age;
        float height;
    }st;
    //这种结构体需要把struct 和 student 都装箱
    NSValue *structValue1 = [NSValue valueWithBytes:&st objCType:@encode(struct student)];
    
    NSRange range = NSMakeRange(10, 10);
    NSValue *rangeObj = [NSValue value:&range withObjCType:@encode(NSRange)];
    NSDictionary *dict = @{@"st1":structValue,@"st2":structValue1,@"rang":rangeObj};
    NSLog(@"dict >>> %@",dict);
    
    //NSValue 可以对任意类型的基本数据进行装箱
    NSValue *intObj1 = [NSValue value:&intVar withObjCType:@encode(int)];
    NSLog(@" intObj1 >>> %@",intObj1);
    
    NSRange range1;
    [rangeObj getValue:&range1];
    NSLog(@"rang1 >>> %@",NSStringFromRange(range1));
    
   /*int a;
    [intObj1 getValue:&a];
    int b=[intObj1 intValue];//**陷阱**intValue是NSNumber中的方法
    NSLog(@" a >>> %d",a);
    NSNumber *intObj2 = (NSNumber *)intObj1;//虽然强制类型转换了但是本质没有变
    int d = [intObj2 intValue];
    NSLog(@"intObj2 >>%d",d);*/
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
