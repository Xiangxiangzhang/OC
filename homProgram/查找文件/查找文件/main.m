//
//  main.m
//  查找文件
//
//  Created by qingyun on 15/11/6.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        //defaultManager类方法
        NSFileManager *manager = [NSFileManager defaultManager];
        
        //~代表主目录的速记符号，stringByExpandingTildeInPath方法可以接收~并将其展开成主目录路径
        NSString *home = [@"~" stringByExpandingTildeInPath];
        
        //enumeratorAtPath返回一个NSDictionaryEnumerator对象，每次在枚举器对象中调用nextObject方法时，都会返回该目录中下一个文件的路径
        NSDirectoryEnumerator *direnum = [manager enumeratorAtPath:home];
        
        //存储查找到的文件路径
        NSMutableArray *files = [NSMutableArray arrayWithCapacity:100];
        
        NSString *filename;
        while (filename = [direnum nextObject]) {
            if ([[filename pathExtension] isEqualTo:@"jpg"]) {
                [files addObject:filename];
            }
        }
        
        NSEnumerator *fileenum = [files objectEnumerator];//遍历文件数组
        
        while (filename = [fileenum nextObject]) {
            NSLog(@"%@",filename);
        }
    }
    return 0;
}
