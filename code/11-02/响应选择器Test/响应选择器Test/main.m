//
//  main.m
//  响应选择器Test
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QYPerson *person = [[QYPerson alloc]initWithName:@"luhan" andIdentify:@"411423xxxx" andAge:20];
        
        if ([person respondsToSelector:@selector(sing)]) {
            [person sing];
        }else{
            NSLog(@"不会唱歌啊");
        }
    }
    return 0;
}
