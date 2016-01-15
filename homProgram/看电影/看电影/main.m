//
//  main.m
//  看电影
//
//  Created by qingyun on 15/11/7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Xiaoming.h"
#import "Xiaoqiang.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Xiaoqiang *qiang = [[Xiaoqiang alloc] init];
        Xiaoming *ming = [[Xiaoming alloc] init];
        
        ming.delegate = qiang;
        
        [ming WantTo];
        
    }
    return 0;
}
