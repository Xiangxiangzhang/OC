//
//  main.m
//  FoundationCopyDemo
//
//  Created by qingyun on 15/11/4.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSString *name = @"luhan";
        //copy 返回的结果 是 copyWithZone:返回的结果
        //NSString 的 copy 是浅拷贝
        NSString *otherName = [name copy];
        NSLog(@" name: >>> %@, otherName:%@",name,otherName);
        NSLog(@" name:%p, otherName:%p ",name,otherName);
        
        //NSDictionary 的 copy 也是浅拷贝
        NSDictionary *dict = @{@"name":@"luhan",@"age":@"20"};
        NSDictionary *dictCopy = [dict copy];
        NSLog(@" dict: >> %@\n,dictCopy: >>%@",dict,dictCopy);
        NSLog(@" dict:%p ,  dictCop:%p",dict,dictCopy);
        //这可以印证copy是对对象的一次引用，而并没有真正地去创造另外一个对象
        
        //NSArray 的 copy 也是浅拷贝
        NSArray *arr = @[@"xxx",@15,@'a',[NSObject new]];
        NSArray *arrCopy = [arr copy];
        NSLog(@" arr: >> %@, arrCopy: >> %@",arr,arrCopy);
        NSLog(@" arr: %p,  arrCopy:%p",arr,arrCopy);
        
        //NSMutableString 的 copy 是深拷贝
        NSMutableString *mtStr = [NSMutableString stringWithString:name];
        NSString *mtStrcopy = [mtStr copy];
        NSLog(@" mtStr >> %p, aftercopy >> %p",mtStr,mtStrcopy);
        //NSMutableString是可变的，但是拷贝出来的东西是不可变的
        
        //NSMutableArray 的 copy 是深拷贝
        NSMutableArray *mtarr = [NSMutableArray arrayWithArray:arr];
        NSArray *mtarrcopy = [mtarr copy];
        NSLog(@" mtarr >> %p,aftercopy >> %p",mtarr,mtarrcopy);
        [mtarr addObject:@"women"];
        NSLog(@" mtarr >> %@, mtarrcopy >>%@",mtarr,mtarrcopy);
        
        //mutableCopy
        NSString *name1 = [name mutableCopy];
        NSLog(@" name >> %p, name1 >> %p",name,name1);
        
        NSMutableArray *mtarr1 = [mtarr mutableCopy];
        NSLog(@"mtarr >> %p,mtarr1 >> %p",mtarr,mtarr1);
        NSLog(@"mtarr >> %@,mtarr1 >> %@",mtarr,mtarr1);
        
        [mtarr addObject:@"111"];
        [mtarr1 addObject:@"222"];
        NSLog(@"mtarr >> %@,mtarr1 >> %@",mtarr,mtarr1);
        
        //程序会崩溃，不能在遍历的时候去对数组进行操作
//        for (id obj in mtarr){
//            [mtarr removeObject:obj];
//        }
//        NSLog(@" mtarr >> %@",mtarr);
        //遍历的不是数组本身，而是拷贝里面的内容，这样就可以去操作原数组里的内容
        for (id obj in [mtarr copy]){
            [mtarr removeObject:obj];//删除所有
        }
        NSLog(@" mtarr >> %@",mtarr);
        
    }
    return 0;
}
