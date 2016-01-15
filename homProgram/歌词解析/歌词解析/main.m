//
//  main.m
//  歌词解析
//
//  Created by qingyun on 15/11/6.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Music.h"

#define MusicWay @"/Users/qingyun/Desktop/张香玉/OC/作业/歌词.lrc"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Music *ms = [[Music alloc] init];
        
        [ms lyricWithFilePath:MusicWay];
        
        [NSTimer scheduledTimerWithTimeInterval:1 target:ms selector:@selector(song:) userInfo:nil repeats:YES];
        
        [[NSRunLoop mainRunLoop] run];
        
    }
    return 0;
}
