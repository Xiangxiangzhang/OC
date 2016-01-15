//
//  Music.h
//  歌词解析
//
//  Created by qingyun on 15/11/6.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Music : NSObject
{
    NSMutableArray *_lyric;
    NSTimeInterval _timeCount;
}

- (void)lyricWithFilePath:(NSString *)path;

- (void)song:(NSTimer *)timer;

@end
